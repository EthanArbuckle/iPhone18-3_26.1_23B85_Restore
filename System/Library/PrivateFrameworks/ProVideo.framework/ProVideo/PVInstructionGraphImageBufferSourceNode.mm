@interface PVInstructionGraphImageBufferSourceNode
- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4;
- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4;
- (PVInstructionGraphImageBufferSourceNode)initWithPVImageBuffer:(id)a3 transform:(CGAffineTransform *)a4;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3;
- (id)instructionGraphNodeDescription;
@end

@implementation PVInstructionGraphImageBufferSourceNode

- (PVInstructionGraphImageBufferSourceNode)initWithPVImageBuffer:(id)a3 transform:(CGAffineTransform *)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = PVInstructionGraphImageBufferSourceNode;
  v8 = [(PVInstructionGraphSourceNode *)&v16 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    PVRenderManager::INSTANCE(v8, v15);
    imageBuffer = v10->_imageBuffer;
    v12 = *&v15[0];
    if (imageBuffer == *&v15[0])
    {
      if (imageBuffer)
      {
        (*(**&v15[0] + 24))();
      }
    }

    else
    {
      if (imageBuffer)
      {
        (*(imageBuffer->super.isa + 3))(v10->_imageBuffer);
        v12 = *&v15[0];
      }

      v10->_imageBuffer = v12;
    }

    objc_storeStrong(&v9->super._transform.ty, a3);
    v13 = *&a4->c;
    v15[0] = *&a4->a;
    v15[1] = v13;
    v15[2] = *&a4->tx;
    [(PVInstructionGraphSourceNode *)v10 setTransform:v15];
  }

  return v10;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v10 = v6;
  if (([*&self->super._transform.ty canCreateCVPixelBuffer] & 1) == 0 && (objc_msgSend(*&self->super._transform.ty, "canCreateHGBitmap") & 1) == 0)
  {
    v23 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v23);
  }

  v11 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v11);
  *v10 = v11;
  if ([*&self->super._transform.ty cvPixelBufferRequiresCopy])
  {
    v12 = +[PVColorSpace preferredDisplayColorSpace];
    v13 = [*&self->super._transform.ty cgImage];
    if (v13)
    {
      v14 = [PVColorSpace pvColorSpaceFromCGColorSpace:CGImageGetColorSpace(v13)];

      v12 = v14;
    }

    if (!v12)
    {
      v12 = +[PVColorSpace sRGBColorSpace];
    }

    v15 = [*&self->super._transform.ty canCreateCVPixelBuffer];
    ty = self->super._transform.ty;
    if (v15)
    {
      v17 = [*&ty cvPixelBufferWithColorSpace:v12];
      if (v17)
      {
        *v38 = *&a3->var0;
        var3 = a3->var3;
        v18 = *a6.m_Obj;
        v43 = v18;
        if (v18)
        {
          (*(*v18 + 16))(v18);
        }

        PVCreateInputGraphForPixelBuffer(v17, &v43, &v45);
        v19 = *v10;
        v20 = v45;
        if (*v10 == v45)
        {
          if (v19)
          {
            (*(*v45 + 24))(v45);
          }
        }

        else
        {
          if (v19)
          {
            (*(*v19 + 24))(v19);
            v20 = v45;
          }

          *v10 = v20;
          v45 = 0;
        }

        if (v43)
        {
          (*(*v43 + 24))(v43);
        }
      }

      else
      {
        NSLog(&cfstr_WarningPvigima_0.isa, *&self->super._transform.ty);
      }
    }

    else if ([*&ty canCreateHGBitmap])
    {
      v24 = self->super._transform.ty;
      if (v24 == 0.0)
      {
        v38[0] = 0;
      }

      else
      {
        [*&v24 hgBitmapWithColorSpace:v12];
        if (v38[0])
        {
          v25 = HGObject::operator new(0x1F0uLL);
          HGBitmapLoader::HGBitmapLoader(v25, v38[0]);
          v26 = *v10;
          if (*v10 == v25)
          {
            if (v25)
            {
              (*(*v25 + 24))(v25);
              v25 = v26;
            }

            else
            {
              v25 = *v10;
            }
          }

          else
          {
            if (v26)
            {
              (*(*v26 + 24))(*v10);
            }

            *v10 = v25;
          }

          Storage = HGBitmap::GetStorage(v38[0]);
          if (Storage)
          {
            if (v29)
            {
              v30 = v29;
              v42 = v25;
              if (v25)
              {
                (*(*v25 + 16))(v25);
              }

              v31 = v30[3];
              v32 = PVInstructionGraphContext::WorkingColorSpace(*a6.m_Obj);
              v33 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(*a6.m_Obj);
              ColorConformInput(&v42, v31, v32, v33, 0, &v45);
              v34 = v45;
              if (v25 == v45)
              {
                if (v25)
                {
                  (*(*v45 + 24))(v45);
                }
              }

              else
              {
                if (v25)
                {
                  (*(*v25 + 24))(v25);
                  v34 = v45;
                }

                *v10 = v34;
                v45 = 0;
              }

              if (v42)
              {
                (*(*v42 + 24))(v42);
              }
            }
          }

          if (v38[0])
          {
            (*(*v38[0] + 24))(v38[0]);
          }
        }
      }
    }

    v11 = *v10;
    if (*v10)
    {
LABEL_62:
      v41 = v11;
      (*(*v11 + 16))(v11);
      [(PVInstructionGraphSourceNode *)self applyWrapModeToInput:&v41];
      if (v11 == v38[0])
      {
        (*(*v38[0] + 24))(v38[0]);
      }

      else
      {
        (*(*v11 + 24))(v11);
        *v10 = v38[0];
        v38[0] = 0;
      }

      if (v41)
      {
        (*(*v41 + 24))(v41);
      }

      v35 = *v10;
      v40 = v35;
      if (v35)
      {
        (*(*v35 + 16))(v35);
      }

      [(PVInstructionGraphSourceNode *)self transform];
      v36 = (*(**a6.m_Obj + 64))();
      HGXFormForCGAffineTransform(&v40, v38, v36, &v45);
      v37 = v45;
      if (v35 == v45)
      {
        if (v35)
        {
          (*(*v45 + 24))(v45);
        }
      }

      else
      {
        if (v35)
        {
          (*(*v35 + 24))(v35);
          v37 = v45;
        }

        *v10 = v37;
        v45 = 0;
      }

      v27 = v40;
      if (v40)
      {
        return (*(*v40 + 24))(v40);
      }
    }
  }

  else
  {
    v21 = [*&self->super._transform.ty cvPixelBuffer];
    if (v21)
    {
      *v38 = *&a3->var0;
      var3 = a3->var3;
      v44 = *a6.m_Obj;
      if (v44)
      {
        (*(*v44 + 16))(v44);
      }

      PVCreateInputGraphForPixelBuffer(v21, &v44, &v45);
      v22 = v45;
      if (v11 == v45)
      {
        if (v11)
        {
          (*(*v45 + 24))(v45);
        }
      }

      else
      {
        if (v11)
        {
          (*(*v11 + 24))(v11);
          v22 = v45;
        }

        *v10 = v22;
        v45 = 0;
        v11 = v22;
      }

      v27 = v44;
      if (v44)
      {
        v27 = (*(*v44 + 24))(v44);
      }
    }

    else
    {
      NSLog(&cfstr_WarningPvigima.isa, *&self->super._transform.ty);
    }

    if (v11)
    {
      goto LABEL_62;
    }
  }

  return v27;
}

- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4
{
  v6 = v4;
  v7 = a3;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  if ([*&self->super._transform.ty canCreateCVPixelBuffer] & 1) != 0 || (objc_msgSend(*&self->super._transform.ty, "canCreateHGBitmap"))
  {
    [*&self->super._transform.ty size];
    v26 = v13;
    v25 = v14;
    if (v14 > 0.0 && v13 > 0.0)
    {
      [(PVInstructionGraphSourceNode *)self transform];
      v15 = vaddq_f64(vmulq_n_f64(v28, v25), vmulq_n_f64(v29, v26));
      v16 = v15.f64[1];
      v27 = v15;
      if (v15.f64[1] >= v15.f64[0])
      {
        [v7 outputSize];
        v19 = v16 / v20;
        v17 = v27;
      }

      else
      {
        [v7 outputSize];
        v17 = v27;
        v19 = v27.f64[0] / v18;
      }

      *(v6 + 16) = vdivq_f64(v17, vdupq_lane_s64(*&v19, 0));
    }
  }

  result.var3 = v24;
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4
{
  v18 = a4;
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  if ([*&self->super._transform.ty canCreateCVPixelBuffer] & 1) != 0 || (objc_msgSend(*&self->super._transform.ty, "canCreateHGBitmap"))
  {
    v8 = (*(**a5.m_Obj + 40))();
    v10 = v9;
    v11 = (*(**a5.m_Obj + 48))();
    [v18 outputSize];
    v12 = v10;
    v13 = (v11 * v12);
    v14 = v8;
    *&v8 = v11 * v14;
    *&v15 = v13 / v15;
    v16 = PCMatrix44Tmpl<double>::leftScale(retstr, *&v15, -*&v15, 1.0);
    v16.f64[0] = *&v8 * 0.5;
    PCMatrix44Tmpl<double>::leftTranslate(retstr, v16, v13 * 0.5, 0.0);
  }

  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3
{
  v10 = *a3.m_Obj;
  if (v10)
  {
    (*(*v10 + 16))(v10, a2);
  }

  v9.receiver = self;
  v9.super_class = PVInstructionGraphImageBufferSourceNode;
  v4 = [(PVInstructionGraphNode *)&v9 dotTreeLabel:&v10];
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  [*&self->super._transform.ty size];
  v7 = [v4 stringByAppendingFormat:@"\n[%.0f x %.0f]", v5, v6];

  return v7;
}

- (id)instructionGraphNodeDescription
{
  v11.receiver = self;
  v11.super_class = PVInstructionGraphImageBufferSourceNode;
  v3 = [(PVInstructionGraphSourceNode *)&v11 instructionGraphNodeDescription];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  [*&self->super._transform.ty size];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f x %.0f", v7, v8];
  [v4 setObject:v9 forKeyedSubscript:@"size"];

  return v4;
}

@end