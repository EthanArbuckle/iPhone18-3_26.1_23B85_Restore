@interface PVAVFRenderJobDelegate
- (PVAVFRenderJobDelegate)initWithCompositor:(id)a3 request:(id)a4 compositionTime:(id *)a5 thumbnailCompositing:(BOOL)a6;
- (id).cxx_construct;
- (int)jobPriority;
- (int)renderContextPriority;
- (int)renderThreadPriority;
- (unint64_t)packedFamilyCode;
- (unsigned)jobTypeTag;
- (void)_buildGraph:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5 outputNodes:(void *)a6;
- (void)_setupInputs:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5;
- (void)buildGraph:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5;
- (void)finishCancelledJob;
- (void)finishCompletedJob;
- (void)renderJobFinished:(HGRef<PVRenderJob>)a3;
- (void)setupDestinationBuffers:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5;
@end

@implementation PVAVFRenderJobDelegate

- (PVAVFRenderJobDelegate)initWithCompositor:(id)a3 request:(id)a4 compositionTime:(id *)a5 thumbnailCompositing:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v38.receiver = self;
  v38.super_class = PVAVFRenderJobDelegate;
  v13 = [(PVAVFRenderJobDelegate *)&v38 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->m_compositor, a3);
    objc_storeStrong(&v14->m_request, a4);
    v15 = [(AVAsynchronousVideoCompositionRequest *)v14->m_request videoCompositionInstruction];
    m_instruction = v14->m_instruction;
    v14->m_instruction = v15;

    v17 = *&a5->var0;
    v14->m_compositionTime.epoch = a5->var3;
    *&v14->m_compositionTime.value = v17;
    v14->m_thumbnailCompositing = a6;
    v14->m_minimumRequestCompletionTimeMS = 0;
    PerfTimer::Start(&v14->m_timer);
    v18 = [(PVAVFRenderJobDelegate *)v14 jobTypeTag];
    v14->m_parentCode = v18;
    v14->m_childCode = 0;
    PVRenderManager::INSTANCE(v18, &time);
    m_Obj = v14->m_renderManager.m_Obj;
    value = time.value;
    if (m_Obj == time.value)
    {
      if (m_Obj)
      {
        (*(*time.value + 24))(time.value);
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(m_Obj);
        value = time.value;
      }

      v14->m_renderManager.m_Obj = value;
    }

    v21 = [(PVVideoCompositing *)v14->m_compositor videoCompositingContext];
    v22 = [(AVAsynchronousVideoCompositionRequest *)v14->m_request renderContext];
    v23 = [(PVVideoCompositing *)v14->m_compositor thumbnailCompositing];
    v24 = HGObject::operator new(0x88uLL);
    PVAVFInstructionGraphContext::PVAVFInstructionGraphContext(v24, v21, v22, v23);
    v25 = v14->m_instructionGraphContext.m_Obj;
    if (v25 == v24)
    {
      if (v24)
      {
        (*(*v24 + 24))(v24);
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
      }

      v14->m_instructionGraphContext.m_Obj = v24;
    }

    v26 = MEMORY[0x277CCACA8];
    v27 = v14->m_compositionTime.value;
    timescale = v14->m_compositionTime.timescale;
    *&time.flags = *&v14->m_compositionTime.flags;
    HIDWORD(time.epoch) = HIDWORD(v14->m_compositionTime.epoch);
    time.value = v27;
    time.timescale = timescale;
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v27, timescale, CMTimeGetSeconds(&time)];
    v30 = [v26 stringWithFormat:@"RequestTime: %@", v29];

    v31 = v14->m_instructionGraphContext.m_Obj;
    v32 = [v30 UTF8String];
    v33 = strlen(v32);
    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v34 = v33;
    if (v33 >= 0x17)
    {
      operator new();
    }

    v37 = v33;
    if (v33)
    {
      memmove(&__dst, v32, v33);
    }

    *(&__dst + v34) = 0;
    PVInstructionGraphContext::AddContextDotNode(v31, &__dst);
    if (v37 < 0)
    {
      operator delete(__dst);
    }
  }

  return v14;
}

- (unsigned)jobTypeTag
{
  v2 = objc_opt_class();

  return [v2 jobTypeTag];
}

- (int)jobPriority
{
  if (self->m_thumbnailCompositing)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

- (int)renderThreadPriority
{
  v3 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
  if ([v3 highQualityRendering])
  {
    v4 = [(PVVideoCompositing *)self->m_compositor shouldDoLowPowerExport];

    if (v4)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else
  {

    return 3;
  }
}

- (int)renderContextPriority
{
  v3 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
  if ([v3 highQualityRendering])
  {
    v4 = [(PVVideoCompositing *)self->m_compositor shouldDoLowPowerExport];

    if (v4)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {

    return 5;
  }
}

- (void)buildGraph:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5
{
  v9 = v10;
  v10[0] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[1] = 0;
  v10[2] = v11;
  v11[2] = v12;
  v12[0] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[1] = 0;
  v12[2] = v13;
  v13[2] = v14;
  v14[0] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[1] = 0;
  v14[2] = v15;
  [PVAVFRenderJobDelegate _setupInputs:"_setupInputs:renderContext:frameStats:" renderContext:&v9 frameStats:?];
  [(PVAVFRenderJobDelegate *)self _buildGraph:&v9 renderContext:a4 frameStats:a5 outputNodes:a3];
  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::~PVInputHGNodeMap(&v9);
}

- (void)_setupInputs:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5
{
  v97 = *MEMORY[0x277D85DE8];
  if (HGLogger::getLevel("PVSignPost", a2) >= 1)
  {
    [(PVAVFRenderJobDelegate *)self packedFamilyCode];
    kdebug_trace();
  }

  PerfTimer::PerfTimer(&v90);
  PerfTimer::Start(&v90);
  v47 = [(AVAsynchronousVideoCompositionRequest *)self->m_request sourceTrackIDs];
  if (+[PVEnvironment PV_MULTI_SOURCE_PLAYBACK_FPS](PVEnvironment, "PV_MULTI_SOURCE_PLAYBACK_FPS") && *(a5 + 56) == 1 && [v47 count] <= 1)
  {
    *(a5 + 56) = 0;
  }

  if (v47 && [v47 count])
  {
    v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [(PVVideoCompositionInstruction *)self->m_instruction outputNode];
    v8 = [v7 getAllSourceNodes];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
    if (v9)
    {
      v10 = *v86;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v86 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v85 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "trackID")}];
            v15 = [v57 objectForKeyedSubscript:v14];
            v16 = v15 == 0;

            if (v16)
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v57 setObject:v17 forKeyedSubscript:v14];
            }

            v18 = [v57 objectForKeyedSubscript:v14];
            [v18 addObject:v13];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
      }

      while (v9);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v53 = obj;
    v19 = [v53 countByEnumeratingWithState:&v81 objects:v95 count:16];
    if (v19)
    {
      v20 = *v82;
      v48 = *v82;
      do
      {
        v21 = 0;
        v51 = v19;
        do
        {
          if (*v82 != v20)
          {
            objc_enumerationMutation(v53);
          }

          v22 = *(*(&v81 + 1) + 8 * v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
            *(&v59 + 1) = 0;
            v60 = 0.0;
            *&v59 = &v59 + 8;
            v24 = [v23 requiredSourceTrackIDs];
            v55 = v23;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v77 objects:v94 count:16];
            if (v26)
            {
              v27 = *v78;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v78 != v27)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v29 = [*(*(&v77 + 1) + 8 * j) intValue];
                  v76 = v29;
                  if (v29)
                  {
                    v30 = [(AVAsynchronousVideoCompositionRequest *)self->m_request sourceFrameByTrackID:v29];
                    v91 = &v76;
                    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v59, &v76)[5] = v30;
                  }
                }

                v26 = [v25 countByEnumeratingWithState:&v77 objects:v94 count:16];
              }

              while (v26);
            }

            v20 = v48;
            v19 = v51;
            if (v55)
            {
              [v55 nodeForCompositeTrackMap:&v59];
              v75 = v91;
              if (v91)
              {
                (*(*v91 + 16))(v91);
              }
            }

            else
            {
              v91 = 0;
              v75 = 0;
            }

            PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetNode(a3, v55, &v75);
            if (v75)
            {
              (*(*v75 + 24))(v75);
            }

            if (v91)
            {
              (*(*v91 + 24))(v91);
            }

            std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v59, *(&v59 + 1));
          }

          ++v21;
        }

        while (v21 != v19);
        v19 = [v53 countByEnumeratingWithState:&v81 objects:v95 count:16];
      }

      while (v19);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v49 = v47;
    v52 = [v49 countByEnumeratingWithState:&v71 objects:v93 count:16];
    if (v52)
    {
      v50 = *v72;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v72 != v50)
          {
            objc_enumerationMutation(v49);
          }

          v31 = *(*(&v71 + 1) + 8 * k);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v32 = [v57 objectForKeyedSubscript:v31];
          v33 = [v32 countByEnumeratingWithState:&v67 objects:v92 count:16];
          if (v33)
          {
            v34 = *v68;
            do
            {
              for (m = 0; m != v33; ++m)
              {
                if (*v68 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v36 = *(*(&v67 + 1) + 8 * m);
                v37 = [v31 intValue];
                if (v37)
                {
                  v38 = [(AVAsynchronousVideoCompositionRequest *)self->m_request sourceFrameByTrackID:v37];
                  if (v38)
                  {
                    if ([v36 dataTrackID])
                    {
                      HGCVBitmap::create(-[AVAsynchronousVideoCompositionRequest sourceFrameByTrackID:](self->m_request, "sourceFrameByTrackID:", [v36 dataTrackID]), 1, 0, &v59);
                      v64 = v59;
                      if (v59)
                      {
                        (*(*v59 + 16))(v59);
                      }

                      PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetFrameDataPixelBuffer(a3, v36, &v64);
                      if (v64)
                      {
                        (*(*v64 + 24))(v64);
                      }

                      if (v59)
                      {
                        (*(*v59 + 24))(v59);
                      }
                    }

                    if ([v36 depthTrackID] && objc_msgSend(v36, "metadataTrackID"))
                    {
                      v39 = -[AVAsynchronousVideoCompositionRequest sourceTimedMetadataByTrackID:](self->m_request, "sourceTimedMetadataByTrackID:", [v36 metadataTrackID]);
                      if (v39)
                      {
                        [v36 setTimedMetadataGroup:v39];
                      }
                    }

                    v59 = *&self->m_compositionTime.value;
                    v60 = *&self->m_compositionTime.epoch;
                    m_Obj = self->m_instructionGraphContext.m_Obj;
                    v63 = m_Obj;
                    if (m_Obj)
                    {
                      (*(*m_Obj + 16))(m_Obj);
                    }

                    PVCreateInputGraphForPixelBuffer(v38, &v63, &v91);
                    if (v63)
                    {
                      (*(*v63 + 24))(v63);
                    }

                    v62 = v91;
                    if (v91)
                    {
                      (*(*v91 + 16))(v91);
                    }

                    PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetNode(a3, v36, &v62);
                    if (v62)
                    {
                      (*(*v62 + 24))(v62);
                    }

                    Width = CVPixelBufferGetWidth(v38);
                    Height = CVPixelBufferGetHeight(v38);
                    v59 = 0uLL;
                    v60 = Width;
                    v61 = Height;
                    v43 = PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetInputSize(a3, v36, &v59);
                    if (v91)
                    {
                      (*(*v91 + 24))(v91, v43);
                    }
                  }

                  else
                  {
                    v44 = HGObject::operator new(0x1A0uLL);
                    HGNode::HGNode(v44);
                    v65 = v44;
                    if (v44)
                    {
                      (*(*v44 + 16))(v44);
                    }

                    PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetNode(a3, v36, &v65);
                    if (v65)
                    {
                      (*(*v65 + 24))(v65);
                    }

                    if (v44)
                    {
                      goto LABEL_91;
                    }
                  }
                }

                else
                {
                  v44 = HGObject::operator new(0x1A0uLL);
                  HGNode::HGNode(v44);
                  v66 = v44;
                  if (v44)
                  {
                    (*(*v44 + 16))(v44);
                  }

                  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetNode(a3, v36, &v66);
                  if (v66)
                  {
                    (*(*v66 + 24))(v66);
                  }

                  if (v44)
                  {
LABEL_91:
                    (*(*v44 + 24))(v44);
                    continue;
                  }
                }
              }

              v33 = [v32 countByEnumeratingWithState:&v67 objects:v92 count:{16, v43.n128_f64[0]}];
            }

            while (v33);
          }
        }

        v52 = [v49 countByEnumeratingWithState:&v71 objects:v93 count:16];
      }

      while (v52);
    }
  }

  else
  {
    v45 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v45);
    v89 = v45;
    if (v45)
    {
      (*(*v45 + 16))(v45);
    }

    PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::SetNode(a3, 0, &v89);
    if (v89)
    {
      (*(*v89 + 24))(v89);
    }

    if (v45)
    {
      (*(*v45 + 24))(v45);
    }
  }

  PerfTimer::End(&v90);
  PVPerfStats::FrameStats::SetValueForIndex(a5, 1u, v90._end - v90._start);
  if (HGLogger::getLevel("PVSignPost", v46) >= 1)
  {
    kdebug_trace();
  }
}

- (void)_buildGraph:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5 outputNodes:(void *)a6
{
  Renderer = HGRenderContext::GetRenderer(a4);
  v10 = Renderer;
  if (Renderer)
  {
    (*(*Renderer + 16))(Renderer);
  }

  v81 = 0;
  v82 = v10;
  v11 = [(PVVideoCompositionInstruction *)self->m_instruction outputNode];

  if (v11)
  {
    if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v12) >= 1)
    {
      *&time.start.value = *&self->m_compositionTime.value;
      time.start.epoch = self->m_compositionTime.epoch;
      v15 = CMTimeCopyDescription(0, &time.start);
      v16 = v15;
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        v18 = [v15 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Current Time:           %s\n", v19, v20, v18);
      }

      CFRelease(v16);
      m_instruction = self->m_instruction;
      if (m_instruction)
      {
        [(PVVideoCompositionInstruction *)m_instruction timeRange];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v24 = CMTimeRangeCopyDescription(0, &time);

      v25 = atomic_load(HGLogger::_enabled);
      if (v25)
      {
        v26 = [v24 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Instruction Time Range: %s\n", v27, v28, v26);
      }

      CFRelease(v24);
    }

    v29 = [(PVVideoCompositionInstruction *)self->m_instruction outputNode];
    *&time.start.value = *&self->m_compositionTime.value;
    time.start.epoch = self->m_compositionTime.epoch;
    m_Obj = self->m_instructionGraphContext.m_Obj;
    v78 = m_Obj;
    if (m_Obj)
    {
      (*(*m_Obj + 16))(m_Obj);
    }

    if (v29)
    {
      [v29 hgNodeForTime:&time trackInputs:a3 renderer:&v82 igContext:&v78];
      v31 = v79;
      v32 = v81;
      if (v81 == v79)
      {
        if (v79)
        {
          (*(*v79 + 24))();
        }

        goto LABEL_26;
      }

      if (!v81)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v79 = 0;
      v32 = v81;
      if (!v81)
      {
LABEL_26:
        if (v78)
        {
          (*(*v78 + 24))(v78);
        }

        goto LABEL_29;
      }
    }

    (*(*v32 + 24))(v32);
    v31 = v79;
LABEL_25:
    v81 = v31;
    v79 = 0;
    goto LABEL_26;
  }

  v22 = atomic_load(HGLogger::_enabled);
  if (v22)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "instruction.outputNode is nil; returning empty HGNode\n", v13, v14);
  }

  v23 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v23);
  if (v81 == v23)
  {
    if (v23)
    {
      (*(*v23 + 24))(v23);
    }
  }

  else
  {
    v81 = v23;
  }

LABEL_29:
  if (+[PVEnvironment PV_HIGHLIGHT_OUT_OF_GAMUT])
  {
    v33 = HGObject::operator new(0x1A0uLL);
    HgcHighlightOutOfGamut::HgcHighlightOutOfGamut(v33);
    (*(*v33 + 120))(v33, 0, v81);
    if (v81 != v33)
    {
      if (v81)
      {
        (*(*v81 + 24))();
      }

      v81 = v33;
      (*(*v33 + 16))(v33);
    }

    (*(*v33 + 24))(v33);
  }

  if (+[PVEnvironment PVHighlightHDRRegions])
  {
    v34 = PVInstructionGraphContext::WorkingColorSpace(self->m_instructionGraphContext.m_Obj);
    v35 = +[PVColorSpace rec2020LinearColorSpace];
    if (([v34 isEqual:v35] & 1) == 0)
    {
      v77 = v81;
      if (v81)
      {
        (*(*v81 + 16))(v81);
      }

      ColorConformInput(&v77, v34, v35, 0, 0, &v79);
      v36 = v79;
      if (v81 == v79)
      {
        if (v81)
        {
          (*(*v79 + 24))(v79);
        }
      }

      else
      {
        if (v81)
        {
          (*(*v81 + 24))();
          v36 = v79;
        }

        v81 = v36;
        v79 = 0;
      }

      if (v77)
      {
        (*(*v77 + 24))(v77);
      }
    }

    v37 = HGObject::operator new(0x1A0uLL);
    HgcHighlightHDRRegion::HgcHighlightHDRRegion(v37);
    (*(*v37 + 120))(v37, 0, v81);
    if (v81 != v37)
    {
      if (v81)
      {
        (*(*v81 + 24))();
      }

      v81 = v37;
      (*(*v37 + 16))(v37);
    }

    if (([v34 isEqual:v35] & 1) == 0)
    {
      v76 = v81;
      if (v81)
      {
        (*(*v81 + 16))(v81);
      }

      ColorConformInput(&v76, v35, v34, 0, 0, &v79);
      v38 = v79;
      if (v81 == v79)
      {
        if (v81)
        {
          (*(*v79 + 24))(v79);
        }
      }

      else
      {
        if (v81)
        {
          (*(*v81 + 24))();
          v38 = v79;
        }

        v81 = v38;
        v79 = 0;
      }

      if (v76)
      {
        (*(*v76 + 24))(v76);
      }
    }

    (*(*v37 + 24))(v37);
  }

  v75 = v81;
  if (v81)
  {
    (*(*v81 + 16))(v81);
  }

  v39 = PVInstructionGraphContext::WorkingColorSpace(self->m_instructionGraphContext.m_Obj);
  v40 = PVInstructionGraphContext::OutputColorSpace(self->m_instructionGraphContext.m_Obj);
  v74 = 0;
  ColorConformInput(&v75, v39, v40, 1, &v74, &v79);
  v41 = v74;
  v42 = v79;
  if (v81 == v79)
  {
    if (v81)
    {
      (*(*v79 + 24))(v79);
    }
  }

  else
  {
    if (v81)
    {
      (*(*v81 + 24))();
      v42 = v79;
    }

    v81 = v42;
    v79 = 0;
  }

  if (v75)
  {
    (*(*v75 + 24))(v75);
  }

  if (v41)
  {
    NSLog(&cfstr_ConformError.isa, v41);
  }

  v43 = [(PVVideoCompositing *)self->m_compositor requiredPixelBufferAttributesForRenderContext];
  v44 = [v43 objectForKey:*MEMORY[0x277CC4E30]];
  v45 = [v44 objectAtIndex:0];
  v46 = [v45 unsignedIntValue];

  if (PVIsMultiplaneCoreVideo420Format(v46) || PVIsMultiplaneCoreVideo422Format(v46))
  {
    v73 = v41;
    v47 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
    [v47 size];
    v49 = v48;
    v50 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
    [v50 renderScale];
    v52 = v51;

    v53 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
    [v53 size];
    v55 = v54;
    v56 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
    [v56 renderScale];
    v57 = a6;
    v58 = (v49 * v52);
    v60 = (v55 * v59);

    v61 = v58 & 1;
    if (v58 < 0)
    {
      v61 = -v61;
    }

    v62 = HGRectMake4i(0, 0, v61 + v58, v60);
    v64 = v63;
    DOD = HGRenderer::GetDOD(v82, v81);
    v67 = v66;
    v68 = PVInstructionGraphContext::OutputColorSpace(self->m_instructionGraphContext.m_Obj);
    v69 = [v68 nclcTriplet];

    PVCreateYUVPlanesWithBackfillBlackBackground(DOD, v67, v62, v64, &v81, v69, v46, v57);
    v41 = v73;
  }

  else
  {
    v70 = *(a6 + 1);
    if (v70 >= *(a6 + 2))
    {
      v72 = std::vector<HGRef<HGNode>>::__emplace_back_slow_path<HGRef<HGNode> const&>(a6, &v81);
    }

    else
    {
      v71 = v81;
      *v70 = v81;
      if (v71)
      {
        (*(*v71 + 16))(v71);
      }

      v72 = (v70 + 1);
      *(a6 + 1) = v70 + 1;
    }

    *(a6 + 1) = v72;
  }

  if (v81)
  {
    (*(*v81 + 24))(v81);
  }

  if (v82)
  {
    (*(*v82 + 24))(v82);
  }
}

- (void)setupDestinationBuffers:(void *)a3 renderContext:(const void *)a4 frameStats:(void *)a5
{
  m_destinationPixelBuffer = self->m_destinationPixelBuffer;
  if (!m_destinationPixelBuffer)
  {
    v9 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext:a3];
    self->m_destinationPixelBuffer = [v9 newPixelBuffer];

    m_destinationPixelBuffer = self->m_destinationPixelBuffer;
  }

  PVCreateOutputBufferForHGCVPixelBuffer(m_destinationPixelBuffer, a4, a3);
}

- (void)finishCompletedJob
{
  PerfTimer::End(&self->m_timer);
  HIDWORD(v3) = 1083129856;
  v4 = (self->m_timer._end - self->m_timer._start) * 1000.0;
  LODWORD(v3) = self->m_minimumRequestCompletionTimeMS;
  v5 = v3;
  if (v4 < v5)
  {
    usleep(1000 * (v5 - v4));
  }

  [(AVAsynchronousVideoCompositionRequest *)self->m_request finishWithComposedVideoFrame:self->m_destinationPixelBuffer];
  CVPixelBufferRelease(self->m_destinationPixelBuffer);
  self->m_destinationPixelBuffer = 0;
}

- (void)finishCancelledJob
{
  [(AVAsynchronousVideoCompositionRequest *)self->m_request finishCancelledRequest];
  m_destinationPixelBuffer = self->m_destinationPixelBuffer;
  if (m_destinationPixelBuffer)
  {
    CVPixelBufferRelease(m_destinationPixelBuffer);
    self->m_destinationPixelBuffer = 0;
  }
}

- (void)renderJobFinished:(HGRef<PVRenderJob>)a3
{
  m_compositor = self->m_compositor;
  v4 = *a3.var0;
  v5 = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  [(PVVideoCompositing *)m_compositor renderRequestFinished:&v5];
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }
}

- (unint64_t)packedFamilyCode
{
  v3 = [(PVAVFRenderJobDelegate *)self parentCode];
  v4 = [(AVAsynchronousVideoCompositionRequest *)self->m_request renderContext];
  v5 = [v4 highQualityRendering];

  LODWORD(v6) = v3 + 100;
  if (v5)
  {
    v6 = v6;
  }

  else
  {
    v6 = v3;
  }

  return self->m_childCode | (v6 << 32);
}

- (id).cxx_construct
{
  PerfTimer::PerfTimer(&self->m_timer);
  self->m_renderManager.m_Obj = 0;
  self->m_instructionGraphContext.m_Obj = 0;
  return self;
}

@end