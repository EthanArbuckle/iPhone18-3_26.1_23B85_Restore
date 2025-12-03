@interface KNAnimationPluginContext
- (BOOL)isBuild;
- (BOOL)isFrameRenderer;
- (BOOL)isMagicMove;
- (BOOL)isMetalRenderer;
- (BOOL)willRenderWithLiveTextureSources;
- (CGRect)animationFrame;
- (CGRect)boundingRect;
- (CGRect)boundingRectOnCanvas;
- (CGRect)drawableFrame;
- (KNAnimatedBuild)animatedBuild;
- (KNAnimationPluginContext)init;
- (NSArray)magicMoveMatches;
- (NSDictionary)buildAttributes;
- (NSDictionary)transitionAttributes;
- (NSString)description;
- (TSDRep)rep;
- (void)setAnimatedBuild:(id)build;
- (void)setTransitionAttributes:(id)attributes;
@end

@implementation KNAnimationPluginContext

- (KNAnimationPluginContext)init
{
  v7.receiver = self;
  v7.super_class = KNAnimationPluginContext;
  v3 = [(KNAnimationPluginContext *)&v7 init];
  if (v3)
  {
    v4 = objc_msgSend_randomGeneratorWithSeed_(KNAnimationRandomGenerator, v2, 0);
    randomGenerator = v3->_randomGenerator;
    v3->_randomGenerator = v4;
  }

  return v3;
}

- (BOOL)isBuild
{
  v3 = objc_msgSend_rendererType(self, a2, v2);
  if ((v3 - 1) < 2)
  {
    return 1;
  }

  if (!v3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNAnimationPluginContext isBuild]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 63, 0, "Unknown type!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  return 0;
}

- (BOOL)isMagicMove
{
  v3 = objc_msgSend_rendererType(self, a2, v2);
  if ((v3 - 7) < 2)
  {
    return 1;
  }

  if (!v3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNAnimationPluginContext isMagicMove]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 91, 0, "Unknown type!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  return 0;
}

- (BOOL)isFrameRenderer
{
  v4 = objc_msgSend_rendererType(self, a2, v2);
  result = 0;
  if (v4 <= 8)
  {
    if (((1 << v4) & 0x154) != 0)
    {
      return 1;
    }

    else if (!v4)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNAnimationPluginContext isFrameRenderer]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 115, 0, "Unknown type!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
      return 0;
    }
  }

  return result;
}

- (BOOL)isMetalRenderer
{
  v4 = objc_msgSend_rendererType(self, a2, v2);
  result = 0;
  if (v4 <= 8)
  {
    if (((1 << v4) & 0x154) != 0)
    {
      return 1;
    }

    else if (!v4)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNAnimationPluginContext isMetalRenderer]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginContext.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 139, 0, "Unknown type!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
      return 0;
    }
  }

  return result;
}

- (BOOL)willRenderWithLiveTextureSources
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_textures(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_willRenderWithLiveTexturedRectangleSource(*(*(&v11 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (NSString)description
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  if (objc_msgSend_isBuild(self, v5, v6))
  {
    objc_msgSend_addObject_(v4, v7, @"isBuild");
  }

  else
  {
    objc_msgSend_addObject_(v4, v7, @"isTransition");
  }

  if (objc_msgSend_isMagicMove(self, v8, v9))
  {
    objc_msgSend_addObject_(v4, v10, @"isMagicMove");
  }

  isMagicMove = objc_msgSend_isMagicMove(self, v10, v11);
  v15 = MEMORY[0x277CCACA8];
  if (isMagicMove)
  {
    v16 = objc_msgSend_magicMoveMatches(self, v13, v14);
    v51 = objc_msgSend_count(v16, v17, v18);
    objc_msgSend_stringWithFormat_(v15, v19, @"magicMoveMatches:%zd", v51);
  }

  else
  {
    v20 = objc_msgSend_textures(self, v13, v14);
    v23 = objc_msgSend_count(v20, v21, v22);
    v25 = objc_msgSend_stringWithFormat_(v15, v24, @"textures:%zd", v23);
    objc_msgSend_addObject_(v4, v26, v25);

    v27 = MEMORY[0x277CCACA8];
    v16 = objc_msgSend_tags(self, v28, v29);
    v52 = objc_msgSend_count(v16, v30, v31);
    objc_msgSend_stringWithFormat_(v27, v32, @"tags:%zd", v52);
  }
  v33 = ;
  objc_msgSend_addObject_(v4, v34, v33);

  if (objc_msgSend_isFrameRenderer(self, v35, v36))
  {
    v39 = MEMORY[0x277CCACA8];
    objc_msgSend_percent(self, v37, v38);
    v42 = objc_msgSend_stringWithFormat_(v39, v40, @"percent:%0.3f", v41);
    objc_msgSend_addObject_(v4, v43, v42);
  }

  v44 = MEMORY[0x277CCACA8];
  v53.receiver = self;
  v53.super_class = KNAnimationPluginContext;
  v45 = [(KNAnimationPluginContext *)&v53 description];
  v47 = objc_msgSend_componentsJoinedByString_(v4, v46, @",");
  v49 = objc_msgSend_stringWithFormat_(v44, v48, @"%@: {%@}", v45, v47);

  return v49;
}

- (void)setAnimatedBuild:(id)build
{
  buildCopy = build;
  objc_storeWeak(&self->_animatedBuild, buildCopy);
  v7 = objc_msgSend_attributes(buildCopy, v5, v6);

  v13 = objc_msgSend_valueForAttributeKey_(v7, v8, @"KNBuildCustomAttributesRandomNumberSeed");

  v10 = v13;
  if (v13)
  {
    v11 = objc_msgSend_randomGeneratorWithSeed_(KNAnimationRandomGenerator, v9, v13);
    randomGenerator = self->_randomGenerator;
    self->_randomGenerator = v11;

    v10 = v13;
  }
}

- (void)setTransitionAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_storeWeak(&self->_transitionAttributes, attributesCopy);
  v10 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v5, @"KNTransitionCustomAttributesRandomNumberSeed");

  v7 = v10;
  if (v10)
  {
    v8 = objc_msgSend_randomGeneratorWithSeed_(KNAnimationRandomGenerator, v6, v10);
    randomGenerator = self->_randomGenerator;
    self->_randomGenerator = v8;

    v7 = v10;
  }
}

- (KNAnimatedBuild)animatedBuild
{
  WeakRetained = objc_loadWeakRetained(&self->_animatedBuild);

  return WeakRetained;
}

- (NSDictionary)transitionAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionAttributes);

  return WeakRetained;
}

- (CGRect)boundingRectOnCanvas
{
  x = self->_boundingRectOnCanvas.origin.x;
  y = self->_boundingRectOnCanvas.origin.y;
  width = self->_boundingRectOnCanvas.size.width;
  height = self->_boundingRectOnCanvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSDictionary)buildAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_buildAttributes);

  return WeakRetained;
}

- (NSArray)magicMoveMatches
{
  WeakRetained = objc_loadWeakRetained(&self->_magicMoveMatches);

  return WeakRetained;
}

- (CGRect)drawableFrame
{
  x = self->_drawableFrame.origin.x;
  y = self->_drawableFrame.origin.y;
  width = self->_drawableFrame.size.width;
  height = self->_drawableFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)animationFrame
{
  x = self->_animationFrame.origin.x;
  y = self->_animationFrame.origin.y;
  width = self->_animationFrame.size.width;
  height = self->_animationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSDRep)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end