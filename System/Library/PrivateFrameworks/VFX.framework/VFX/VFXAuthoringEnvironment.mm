@interface VFXAuthoringEnvironment
+ (id)authoringEnvironmentForWorldRenderer:(id)renderer createIfNeeded:(BOOL)needed;
+ (id)rendererForWorldRenderer:(id)renderer;
- (BOOL)didTapAtPoint:(CGPoint)point;
- (BOOL)selectionIsReadonly;
- (VFXNode)authoringOverlayLayer;
- (__n128)viewMatrix;
- (id)_initWithEngineContext:(__CFXEngineContext *)context;
- (id)authoringEnvironment2;
- (id)renderer;
- (void)_setupAuthoringEnv2:(id)env2;
- (void)beginEditingNodes:(id)nodes;
- (void)dealloc;
- (void)drawLineFromPoint:(VFXAuthoringEnvironment *)self toPoint:(SEL)point color:(id)color;
- (void)drawString:(id)string atPoint:(CGPoint)point color:(id)color;
- (void)saveInitialSelection;
- (void)setEditingSpace:(int64_t)space;
- (void)setSelectionIsReadonly:(BOOL)readonly;
- (void)setupAuthoringEnv2;
- (void)update;
- (void)worldDidChange:(id)change;
@end

@implementation VFXAuthoringEnvironment

- (id)_initWithEngineContext:(__CFXEngineContext *)context
{
  v5.receiver = self;
  v5.super_class = VFXAuthoringEnvironment;
  v3 = [(VFXAuthoringEnvironment *)&v5 init];
  if (v3)
  {
    LOBYTE(v3->_gridUnit) = 0;
    sub_1AF111FD8();
  }

  return 0;
}

+ (id)rendererForWorldRenderer:(id)renderer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return renderer;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCF730();
    }

    return 0;
  }

  return objc_msgSend_renderer(renderer, v4, v5, v6);
}

+ (id)authoringEnvironmentForWorldRenderer:(id)renderer createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v6 = objc_msgSend_rendererForWorldRenderer_(self, a2, renderer, needed);
  v10 = objc_msgSend__engineContext(v6, v7, v8, v9);
  v11 = sub_1AF12EE9C(v10, neededCopy);
  v12 = v11;
  if (v11)
  {
    *(v11 + 16) = renderer;
    objc_opt_class();
    v12[24] = objc_opt_isKindOfClass() & 1;
  }

  return v12;
}

- (id)renderer
{
  v3 = objc_opt_class();
  worldRenderer = self->_worldRenderer;

  return objc_msgSend_rendererForWorldRenderer_(v3, v4, worldRenderer, v5);
}

- (__n128)viewMatrix
{
  v1 = *(self + 8);
  if (v1)
  {
    v2 = sub_1AF13050C(v1, 1);
  }

  else
  {
    v2 = &VFXMatrix4Identity;
  }

  return *v2;
}

- (BOOL)selectionIsReadonly
{
  v4 = objc_msgSend_manipulator(self[1].super.isa, a2, v2, v3);

  return objc_msgSend_readonly(v4, v5, v6, v7);
}

- (void)setSelectionIsReadonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  v5 = objc_msgSend_manipulator(self[1].super.isa, a2, readonly, v3);

  MEMORY[0x1EEE66B58](v5, sel_setReadonly_, readonlyCopy, v6);
}

- (void)setEditingSpace:(int64_t)space
{
  if (self->_editingSpace != space)
  {
    self->_editingSpace = space;
    v5 = objc_msgSend_manipulator(self, a2, space, v3);

    MEMORY[0x1EEE66B58](v5, sel_editingSpaceChanged, v6, v7);
  }
}

- (void)_setupAuthoringEnv2:(id)env2
{
  if (!self[1].super.isa)
  {
    self[1].super.isa = objc_msgSend_authoringEnvironmentForWorld_createIfNeeded_(VFXAuthoringEnvironment2, a2, env2, 1);
  }
}

- (void)setupAuthoringEnv2
{
  if (!self[1].super.isa)
  {
    v3 = sub_1AF12DDCC(self->_engineContext);
    v4 = sub_1AF16CDEC(v3);
    if (v4)
    {

      MEMORY[0x1EEE66B58](self, sel__setupAuthoringEnv2_, v4, v5);
    }
  }
}

- (id)authoringEnvironment2
{
  result = self[1].super.isa;
  if (!result)
  {
    objc_msgSend_setupAuthoringEnv2(self, a2, v2, v3);
    return self[1].super.isa;
  }

  return result;
}

- (void)update
{
  v2 = sub_1AF12E2AC(self->_engineContext);
  if (v2)
  {

    objc_msgSend_showsAuthoringEnvironment(v2, v3, v4, v5);
  }
}

- (void)worldDidChange:(id)change
{
  v6 = objc_msgSend_authoringEnvironment2(self, a2, change, v3);
  v10 = objc_msgSend_manipulator(v6, v7, v8, v9);
  objc_msgSend__setAuthoringEnvironment_(v10, v11, 0, v12);

  self[1].super.isa = 0;

  MEMORY[0x1EEE66B58](self, sel__setupAuthoringEnv2_, change, v13);
}

- (VFXNode)authoringOverlayLayer
{
  v4 = objc_msgSend_authoringEnvironment2(self, a2, v2, v3);

  return objc_msgSend_authoringOverlayLayer(v4, v5, v6, v7);
}

- (void)beginEditingNodes:(id)nodes
{
  v6 = &self->_timedRecordingBuffer[63664];
  v7 = objc_msgSend_count(self->_selectedNodes, a2, nodes, v3);
  v11 = objc_msgSend_authoringEnvironment2(self, v8, v9, v10);
  v15 = objc_msgSend_manipulator(v11, v12, v13, v14);
  objc_msgSend__setAuthoringEnvironment_(v15, v16, self, v17);
  objc_msgSend_selectNodes_(*(v6 + 177), v18, nodes, v19);
  objc_sync_enter(self);
  v20 = sub_1AF12DDCC(self->_engineContext);
  sub_1AF102C88(*(v6 + 52), v20, 0);

  v24 = objc_msgSend_copy(nodes, v21, v22, v23);
  *(v6 + 52) = v24;
  sub_1AF102C88(v24, v20, 1);
  v25 = MEMORY[0x1E695DF70];
  v29 = objc_msgSend_count(nodes, v26, v27, v28);
  v32 = objc_msgSend_arrayWithCapacity_(v25, v30, v29, v31);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_1AF102FA4;
  v48[3] = &unk_1E7A796D8;
  v48[4] = v32;
  objc_msgSend_enumerateObjectsUsingBlock_(nodes, v33, v48, v34);

  v35 = objc_alloc(MEMORY[0x1E695DFA0]);
  *(v6 + 51) = objc_msgSend_initWithArray_(v35, v36, v32, v37);
  objc_sync_exit(self);
  v43 = objc_msgSend_count(*(v6 + 51), v38, v39, v40);
  if ((v7 == 0) == (v43 != 0))
  {
    v44 = sub_1AF12DDCC(self->_engineContext);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v44, 0, 1u);
  }

  if (v43)
  {
    objc_msgSend_setTargets_(v15, v41, *(v6 + 51), v42);
  }

  else
  {
    objc_msgSend_setTargets_(v15, v41, 0, v42);
  }

  objc_msgSend__setNeedsDisplay(self->_worldRenderer, v45, v46, v47);
}

- (void)saveInitialSelection
{
  v6 = objc_msgSend_selectedItems(self, v3, v4, v5);
  v10 = objc_msgSend_set(v6, v7, v8, v9);
  self->_selection = objc_msgSend_copy(v10, v11, v12, v13);
}

- (BOOL)didTapAtPoint:(CGPoint)point
{
  v3 = &self->_timedRecordingBuffer[63664];
  if (!LOBYTE(self->_statisticsInfo.waitDisplayLinkTime))
  {
    goto LABEL_12;
  }

  y = point.y;
  x = point.x;
  v17 = 0;
  sub_1AF103B5C(0, &v17, 0, @"$1$", 0, &self->_boldTextInfo, 0, 0);
  v16 = *&v17;
  v7 = 3.0;
  if (v3[457] == 1)
  {
    v7 = ((self->_normalTextInfo.lineHeight * 7.0) + 14.0) + 3.0;
  }

  v8 = sub_1AF1305E8(self->_engineContext).n128_u64[0];
  v20.origin.y = (v7 + *(&v8 + 1));
  v20.size.height = v16;
  v20.origin.x = (*&v8 + 7.0);
  v20.size.width = v16;
  v21 = CGRectInset(v20, -10.0, -10.0);
  v9 = v21.origin.x;
  v10 = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v21, v18))
  {
    v13 = 0;
  }

  else
  {
    v22.origin.x = v9 + (v16 + 5.0);
    v22.origin.y = v10;
    v22.size.width = width;
    v22.size.height = height;
    v19.x = x;
    v19.y = y;
    v14 = CGRectContainsPoint(v22, v19);
    if (!v14)
    {
      return v14;
    }

    v13 = 1;
  }

  *(v3 + 59) = v13;
  if (!v3[456])
  {
LABEL_12:
    LOBYTE(v14) = 0;
    return v14;
  }

  if ((v13 & 1) == 0)
  {
    v3[457] ^= 1u;
  }

  *(v3 + 59) = -1;
  LOBYTE(v14) = 1;
  return v14;
}

- (void)drawLineFromPoint:(VFXAuthoringEnvironment *)self toPoint:(SEL)point color:(id)color
{
  v7 = v3;
  v8 = v4;
  v9[0] = sub_1AF371798(color, 0);
  v9[1] = v6;
  sub_1AF0FE080(self, 0, v9, 0, v7, v8);
}

- (void)drawString:(id)string atPoint:(CGPoint)point color:(id)color
{
  x = point.x;
  y = point.y;
  v12[0] = sub_1AF371798(color, 0);
  v12[1] = v7;
  v8.f64[0] = x;
  v8.f64[1] = y;
  sub_1AF100BB8(self, string, v12, v9, COERCE_DOUBLE(vcvt_f32_f64(v8)));
}

- (void)dealloc
{
  v5 = &self->_timedRecordingBuffer[63664];
  v6 = objc_msgSend_authoringEnvironment2(self, a2, v2, v3);
  v10 = objc_msgSend_manipulator(v6, v7, v8, v9);
  objc_msgSend__setAuthoringEnvironment_(v10, v11, 0, v12);
  sub_1AF1C4640(self->_depthOnCullOnStates);
  sub_1AF1C4640(self->_depthOnCullOffStates);
  sub_1AF1C4640(self->_depthOffCullOnStates);
  sub_1AF1C4640(self->_depthOffCullOffStates);

  sub_1AF103614(self, &self->_logsInfo);
  sub_1AF103614(self, &self->_dynamicLinesInfo);
  sub_1AF103614(self, &self->_dynamicLinesNoDepthTestInfo);
  sub_1AF103614(self, &self->_overlayDynamicLinesInfo);
  sub_1AF103614(self, &self->_overlayDynamicTriangleInfo);
  sub_1AF103614(self, &self->_dynamicTrianglesInfo);
  sub_1AF103614(self, &self->_lightProbesInfo);
  sub_1AF103614(self, &self->_textInfo);
  sub_1AF103614(self, &self->_boldLogsInfo);
  texture = self->_normalTextInfo.textureInfo.texture;
  if (texture)
  {
    CFRelease(texture);
    self->_normalTextInfo.textureInfo.texture = 0;
  }

  symbolRects = self->_normalTextInfo.symbolRects;
  if (symbolRects)
  {
    free(symbolRects);
  }

  characterWidth_typography = self->_normalTextInfo.characterWidth_typography;
  if (characterWidth_typography)
  {
    free(characterWidth_typography);
  }

  v16 = self->_boldTextInfo.textureInfo.texture;
  if (v16)
  {
    CFRelease(v16);
    self->_boldTextInfo.textureInfo.texture = 0;
  }

  v17 = self->_boldTextInfo.symbolRects;
  if (v17)
  {
    free(v17);
  }

  v18 = self->_boldTextInfo.characterWidth_typography;
  if (v18)
  {
    free(v18);
  }

  noColorProgram = self->_noColorProgram;
  if (noColorProgram)
  {
    CFRelease(noColorProgram);
    self->_noColorProgram = 0;
  }

  colorOnlyProgram = self->_colorOnlyProgram;
  if (colorOnlyProgram)
  {
    CFRelease(colorOnlyProgram);
    self->_colorOnlyProgram = 0;
  }

  colorAndTextureProgram = self->_colorAndTextureProgram;
  if (colorAndTextureProgram)
  {
    CFRelease(colorAndTextureProgram);
    self->_colorAndTextureProgram = 0;
  }

  lightProbesProgram = self->_lightProbesProgram;
  if (lightProbesProgram)
  {
    CFRelease(lightProbesProgram);
    self->_lightProbesProgram = 0;
  }

  wireframeProgram = self->_wireframeProgram;
  if (wireframeProgram)
  {
    CFRelease(wireframeProgram);
    self->_wireframeProgram = 0;
  }

  drawInstancedQuadProgram = self->_drawInstancedQuadProgram;
  if (drawInstancedQuadProgram)
  {
    CFRelease(drawInstancedQuadProgram);
    self->_drawInstancedQuadProgram = 0;
  }

  drawInstancedCubeProgram = self->_drawInstancedCubeProgram;
  if (drawInstancedCubeProgram)
  {
    CFRelease(drawInstancedCubeProgram);
    self->_drawInstancedCubeProgram = 0;
  }

  v26 = *(v5 + 62);
  if (v26)
  {
    CFRelease(v26);
    *(v5 + 62) = 0;
  }

  v27 = *(v5 + 61);
  if (v27)
  {
    CFRelease(v27);
    *(v5 + 61) = 0;
  }

  v28 = *(v5 + 60);
  if (v28)
  {
    CFRelease(v28);
    *(v5 + 60) = 0;
  }

  sub_1AF112018(*(v5 + 55));

  v29.receiver = self;
  v29.super_class = VFXAuthoringEnvironment;
  [(VFXAuthoringEnvironment *)&v29 dealloc];
}

@end