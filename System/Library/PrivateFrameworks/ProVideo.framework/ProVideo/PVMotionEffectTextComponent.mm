@interface PVMotionEffectTextComponent
+ (id)motionEffectPropertyKeyToPublishedParameterNameMap;
- (BOOL)hasEmojiRenderingWorkaround;
- (BOOL)isRightToLeftWithCurrentLocale;
- (BOOL)isTextFlipped;
- (BOOL)isTitleCard;
- (BOOL)motionEffect:(id)effect propertiesDisableCache:(id)cache time:(id *)time forcePosterFrame:(BOOL)frame;
- (BOOL)motionEffect:(id)effect shouldInvalidateCachedRenderForProperty:(id)property oldValue:(id)value newValue:(id)newValue;
- (BOOL)supportsFlippingText;
- (BOOL)supportsOrientation;
- (PVCGPointQuad)textCornersAtTime:(SEL)time index:(id *)index forcePosterFrame:(unint64_t)frame includeDropShadow:(BOOL)shadow scale:(BOOL)scale viewSize:(CGPoint)size viewOrigin:(CGSize)origin;
- (PVMotionEffectTextComponent)initWithMotionEffect:(id)effect;
- (id)attributedStringAtIndex:(unint64_t)index;
- (id)attributedStringAtIndex_NoLock:(unint64_t)lock properties:(id)properties;
- (id)defaultAttributedString:(unint64_t)string;
- (id)defaultAttributedStringAtIndex_NoLock:(unint64_t)lock;
- (id)mainTitle;
- (id)motionEffectPropertyKeysThatInvalidateCachedRender:(id)render;
- (id)subtitle;
- (id)textEditingBounds:(id *)bounds;
- (id)textEditingBoundsAtTime:(id *)time forcePosterFrame:(BOOL)frame useParagraphBounds:(BOOL)bounds includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks;
- (id)textObjectIDs_NoLock:(const void *)lock;
- (id)textTransformsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation includePlayableAspectScale:(BOOL)scale viewSize:(CGSize)size viewOrigin:(int)origin;
- (id)textTransformsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation viewSize:(CGSize)size viewOrigin:(int)origin;
- (id)textTransformsAtTime:(id *)time forcePosterFrame:(BOOL)frame viewSize:(CGSize)size viewOrigin:(int)origin;
- (int)orientation;
- (void)_textObjectIDs_NoLock:(const void *)lock;
- (void)beginEditingTextAtIndex:(unsigned int)index;
- (void)dealloc;
- (void)disableRenderingTextObjectAtIndex_NoLock:(unsigned int)lock documentInfo:(const void *)info;
- (void)effect:(id)effect updateProperties:(id)properties allProperties:(id)allProperties;
- (void)enableRenderingTextObjectAtIndex_NoLock:(unsigned int)lock documentInfo:(const void *)info;
- (void)endEditingTextAtIndex:(unsigned int)index;
- (void)motionEffect:(id)effect didBecomeReady:(const void *)ready properties:(id)properties;
- (void)motionEffect:(id)effect willOpenMedia:(const void *)media properties:(id)properties;
- (void)motionEffectDidUnload:(id)unload;
- (void)resetDefaultStrings:(const void *)strings;
- (void)setAttributedString:(id)string atIndex:(unint64_t)index;
- (void)setIsRightToLeft_NoLock:(BOOL)lock documentInfo:(const void *)info;
- (void)setString:(id)string atIndex:(unint64_t)index;
- (void)setupTitleParameters:(id)parameters allProperties:(id)properties documentInfo:(const void *)info;
- (void)storeDefaultStrings:(const void *)strings;
@end

@implementation PVMotionEffectTextComponent

- (void)dealloc
{
  textObjectIDs = self->_textObjectIDs;
  if (textObjectIDs)
  {
    v4 = *textObjectIDs;
    if (*textObjectIDs)
    {
      textObjectIDs[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x2666E9F00](textObjectIDs, 0x10C402FEFCB83);
    self->_textObjectIDs = 0;
  }

  v5.receiver = self;
  v5.super_class = PVMotionEffectTextComponent;
  [(PVMotionEffectTextComponent *)&v5 dealloc];
}

- (PVMotionEffectTextComponent)initWithMotionEffect:(id)effect
{
  v7.receiver = self;
  v7.super_class = PVMotionEffectTextComponent;
  v3 = [(PVMotionEffectComponent *)&v7 initWithMotionEffect:effect];
  v4 = v3;
  if (v3)
  {
    v3->_textObjectIDs = 0;
    defaultAttributedStrings = v3->_defaultAttributedStrings;
    v3->_defaultAttributedStrings = 0;
  }

  return v4;
}

- (void)storeDefaultStrings:(const void *)strings
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsReady];

  if (!self->_defaultAttributedStrings)
  {
    v7 = [(PVMotionEffectTextComponent *)self _textObjectIDs_NoLock:strings];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7[1] - *v7];
    v10 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        v11 = *v10;
        v12 = objc_opt_new();
        if (OZXGetTextAttributedString(*strings, v11, v12))
        {
          motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
          motionEffect4 = [(PVMotionEffectComponent *)self motionEffect];
          debugDisplayName = [motionEffect4 debugDisplayName];
          NSLog(&cfstr_WarningCouldNo.isa, motionEffect3, debugDisplayName);
        }

        else
        {
          [(NSArray *)v8 addObject:v12];
        }

        ++v10;
      }

      while (v10 != v9);
    }

    defaultAttributedStrings = self->_defaultAttributedStrings;
    self->_defaultAttributedStrings = v8;
  }
}

- (id)attributedStringAtIndex:(unint64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __55__PVMotionEffectTextComponent_attributedStringAtIndex___block_invoke;
  v8[3] = &unk_279AA52D8;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = index;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __55__PVMotionEffectTextComponent_attributedStringAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) motionEffect];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __55__PVMotionEffectTextComponent_attributedStringAtIndex___block_invoke_2;
  v3[3] = &unk_279AA52B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 runWithInspectableProperties:v3];
}

void __55__PVMotionEffectTextComponent_attributedStringAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) attributedStringAtIndex_NoLock:*(a1 + 48) properties:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)attributedStringAtIndex_NoLock:(unint64_t)lock properties:(id)properties
{
  propertiesCopy = properties;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsReady];

  v9 = [(PVMotionEffectTextComponent *)self defaultAttributedStringAtIndex_NoLock:lock];
  v10 = v9;
  if (lock <= 1)
  {
    v11 = kPVTitleEffect_MainTitleStringKey;
    if (lock)
    {
      v11 = kPVTitleEffect_SubTitleStringKey;
    }

    v12 = [propertiesCopy objectForKeyedSubscript:*v11];
    v13 = v12;
    v10 = v9;
    if (v12)
    {
      v14 = [v12 length];
      if (v14 >= [v9 length])
      {
        v15 = [v9 length];
      }

      else
      {
        v15 = [v13 length];
      }

      v16 = [v9 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, v15}];
      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v13 attributes:v16];
    }
  }

  return v10;
}

- (id)defaultAttributedString:(unint64_t)string
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __55__PVMotionEffectTextComponent_defaultAttributedString___block_invoke;
  v8[3] = &unk_279AA5300;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = string;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __55__PVMotionEffectTextComponent_defaultAttributedString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultAttributedStringAtIndex_NoLock:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)resetDefaultStrings:(const void *)strings
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsReady];

  defaultAttributedStrings = self->_defaultAttributedStrings;
  self->_defaultAttributedStrings = 0;
}

- (id)defaultAttributedStringAtIndex_NoLock:(unint64_t)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsReady];

  if ([(NSArray *)self->_defaultAttributedStrings count]<= lock)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_defaultAttributedStrings objectAtIndexedSubscript:lock];
  }

  return v7;
}

- (void)setString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  if (index >= 2)
  {
    NSLog(&cfstr_ErrorOnlyMaint.isa);
  }

  if (!index)
  {
    v6 = kPVTitleEffect_MainTitleStringKey;
    goto LABEL_7;
  }

  if (index == 1)
  {
    v6 = kPVTitleEffect_SubTitleStringKey;
LABEL_7:
    v7 = *v6;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect setString:stringCopy forKey:v7];
}

- (void)setAttributedString:(id)string atIndex:(unint64_t)index
{
  string = [string string];
  [PVMotionEffectTextComponent setString:"setString:atIndex:" atIndex:?];
}

- (id)mainTitle
{
  v2 = [(PVMotionEffectTextComponent *)self attributedStringAtIndex:0];
  string = [v2 string];

  return string;
}

- (id)subtitle
{
  v2 = [(PVMotionEffectTextComponent *)self attributedStringAtIndex:1];
  string = [v2 string];

  return string;
}

- (id)textEditingBoundsAtTime:(id *)time forcePosterFrame:(BOOL)frame useParagraphBounds:(BOOL)bounds includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = *"";
  v16[2] = __122__PVMotionEffectTextComponent_textEditingBoundsAtTime_forcePosterFrame_useParagraphBounds_includeDropShadow_includeMasks___block_invoke;
  v16[3] = &unk_279AA5328;
  frameCopy = frame;
  v17 = *time;
  shadowCopy = shadow;
  masksCopy = masks;
  boundsCopy = bounds;
  v16[4] = self;
  v16[5] = &v22;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v16];

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __122__PVMotionEffectTextComponent_textEditingBoundsAtTime_forcePosterFrame_useParagraphBounds_includeDropShadow_includeMasks___block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) motionEffect];
    v6 = [v5 timelineComponent];
    v4 = [v6 isForceRenderAtPosterFrameEnabled];
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v7 = [*(a1 + 32) motionEffect];
  v8 = [v7 timelineComponent];
  v9 = v8;
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  if (v8)
  {
    [v8 timelineTimeFromComponentTime_NoLock:&v29 forcePosterFrame:v4 documentInfo:a2];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  v10 = [*(a1 + 32) _textObjectIDs_NoLock:a2];
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v25 = _Q0;
    do
    {
      if (*(a1 + 73))
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      if (*(a1 + 74))
      {
        v18 |= 4u;
      }

      v19 = *(a1 + 75);
      v26 = 0.0;
      v27 = 0.0;
      v28 = v25;
      OZXGetObjectBounds(*a2, &v31, *v11, v18 | v19, &v26);
      v20 = *(*(*(a1 + 40) + 8) + 40);
      if (!v20)
      {
        v21 = objc_opt_new();
        v22 = *(*(a1 + 40) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v20 = *(*(*(a1 + 40) + 8) + 40);
      }

      v24 = [MEMORY[0x277CCAE60] valueWithCGRect:{v26, v27, v28, v25}];
      [v20 addObject:v24];

      ++v11;
    }

    while (v11 != v12);
  }
}

- (id)textEditingBounds:(id *)bounds
{
  v5 = *bounds;
  v3 = [(PVMotionEffectTextComponent *)self textEditingBoundsAtTime:&v5 forcePosterFrame:0 useParagraphBounds:1 includeDropShadow:0 includeMasks:1];

  return v3;
}

- (id)textTransformsAtTime:(id *)time forcePosterFrame:(BOOL)frame viewSize:(CGSize)size viewOrigin:(int)origin
{
  v8 = *time;
  v6 = [(PVMotionEffectTextComponent *)self textTransformsAtTime:&v8 forcePosterFrame:frame includeTransformAnimation:1 viewSize:*&origin viewOrigin:size.width, size.height];

  return v6;
}

- (id)textTransformsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation viewSize:(CGSize)size viewOrigin:(int)origin
{
  v9 = *time;
  v7 = [(PVMotionEffectTextComponent *)self textTransformsAtTime:&v9 forcePosterFrame:frame includeTransformAnimation:animation includePlayableAspectScale:1 viewSize:*&origin viewOrigin:size.width, size.height];

  return v7;
}

- (id)textTransformsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation includePlayableAspectScale:(BOOL)scale viewSize:(CGSize)size viewOrigin:(int)origin
{
  height = size.height;
  width = size.width;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect outputSize];
  v18 = v17;
  v20 = v19;

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  LODWORD(motionEffect) = [motionEffect2 origin];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = *"";
  v25[2] = __142__PVMotionEffectTextComponent_textTransformsAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke;
  v25[3] = &unk_279AA5378;
  frameCopy = frame;
  v26 = *time;
  v25[4] = self;
  v25[5] = &v32;
  animationCopy = animation;
  scaleCopy = scale;
  v25[6] = v18;
  v25[7] = v20;
  v27 = motionEffect;
  originCopy = origin;
  *&v25[8] = width;
  *&v25[9] = height;
  [motionEffect3 runEnsuringDocumentReadyAndLockingDocument:v25];

  v23 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v23;
}

void __142__PVMotionEffectTextComponent_textTransformsAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) motionEffect];
    v6 = [v5 timelineComponent];
    v4 = [v6 isForceRenderAtPosterFrameEnabled];
  }

  v27 = 0uLL;
  v28 = 0;
  v7 = [*(a1 + 32) motionEffect];
  v8 = [v7 timelineComponent];
  v9 = v8;
  v25 = *(a1 + 80);
  v26 = *(a1 + 96);
  if (v8)
  {
    [v8 timelineTimeFromComponentTime_NoLock:&v25 forcePosterFrame:v4 documentInfo:a2];
  }

  else
  {
    v27 = 0uLL;
    v28 = 0;
  }

  v10 = [*(a1 + 32) motionEffect];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = *"";
  v11 = *(a1 + 48);
  v14 = *(a1 + 32);
  v12 = *(a1 + 64);
  v20 = *(a1 + 80);
  v16 = v11;
  v22 = *(a1 + 104);
  v13[2] = __142__PVMotionEffectTextComponent_textTransformsAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke_2;
  v13[3] = &unk_279AA5350;
  v15 = a2;
  v19 = v28;
  v21 = *(a1 + 96);
  v23 = *(a1 + 113);
  v24 = *(a1 + 114);
  v17 = v12;
  v18 = v27;
  [v10 runWithInspectableProperties:v13];
}

- (PVCGPointQuad)textCornersAtTime:(SEL)time index:(id *)index forcePosterFrame:(unint64_t)frame includeDropShadow:(BOOL)shadow scale:(BOOL)scale viewSize:(CGPoint)size viewOrigin:(CGSize)origin
{
  height = origin.height;
  width = origin.width;
  y = size.y;
  x = size.x;
  scaleCopy = scale;
  shadowCopy = shadow;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect outputSize];
  v23 = v22;
  v25 = v24;

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  origin = [motionEffect2 origin];

  v48 = *index;
  v28 = [(PVMotionEffectTextComponent *)self textEditingBoundsAtTime:&v48 forcePosterFrame:shadowCopy useParagraphBounds:1 includeDropShadow:scaleCopy includeMasks:0];
  v29 = [v28 objectAtIndexedSubscript:frame];
  v48.var0 = 0;
  *&v48.var1 = &v48;
  v48.var3 = 0x7012000000;
  v49 = __Block_byref_object_copy__84;
  v50 = __Block_byref_object_dispose__85;
  v51 = &unk_260C3B1FE;
  memset(v52, 0, 64);
  [v29 CGRectValue];
  PVCGPointQuad_from_CGRect(v53, v52);
  v30 = *(*&v48.var1 + 64);
  v46.a = *(*&v48.var1 + 48);
  v46.b = v30;
  v31 = *(*&v48.var1 + 96);
  v46.c = *(*&v48.var1 + 80);
  v46.d = v31;
  v31.x = x;
  v30.x = y;
  PVCGPointQuad_scale(&v46, *(&v30 - 8), v47);
  v32 = *&v48.var1;
  v33 = v47[1];
  v35 = v47[2];
  v34 = v47[3];
  *(*&v48.var1 + 48) = v47[0];
  v32[4] = v33;
  v32[5] = v35;
  v32[6] = v34;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = *"";
  v41[2] = __116__PVMotionEffectTextComponent_textCornersAtTime_index_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke;
  v41[3] = &unk_279AA53C8;
  v45 = shadowCopy;
  v42 = *index;
  v41[4] = self;
  v41[5] = &v48;
  v41[6] = frame;
  v41[7] = v23;
  v41[8] = v25;
  *&v41[9] = width;
  *&v41[10] = height;
  v43 = origin;
  v44 = a10;
  [motionEffect3 runEnsuringDocumentReadyAndLockingDocument:v41];

  v37 = *&v48.var1;
  v38 = *(*&v48.var1 + 64);
  retstr->a = *(*&v48.var1 + 48);
  retstr->b = v38;
  v39 = v37[6];
  retstr->c = v37[5];
  retstr->d = v39;
  _Block_object_dispose(&v48, 8);

  return result;
}

double __116__PVMotionEffectTextComponent_textCornersAtTime_index_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _textObjectIDs_NoLock:a2];
  v5 = *(a1 + 48);
  if (v5 >= (v4[1] - *v4) >> 2)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(*v4 + 4 * v5);
  if (*(a1 + 120))
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) motionEffect];
    v9 = [v8 timelineComponent];
    v7 = [v9 isForceRenderAtPosterFrameEnabled];
  }

  v34 = 0uLL;
  v35 = 0;
  v10 = [*(a1 + 32) motionEffect];
  v11 = [v10 timelineComponent];
  v12 = v11;
  v32 = *(a1 + 88);
  v33 = *(a1 + 104);
  if (v11)
  {
    [v11 timelineTimeFromComponentTime_NoLock:&v32 forcePosterFrame:v7 documentInfo:a2];
  }

  else
  {
    v34 = 0uLL;
    v35 = 0;
  }

  v13 = [*(a1 + 32) motionEffect];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = *"";
  v24[2] = __116__PVMotionEffectTextComponent_textCornersAtTime_index_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_2;
  v24[3] = &unk_279AA53A0;
  v25 = *(a1 + 32);
  v27 = v6;
  v28 = v34;
  v29 = v35;
  v30 = *(a1 + 88);
  v31 = *(a1 + 104);
  v26 = a2;
  [v13 runWithInspectableProperties:v24];

  v14 = *(*(a1 + 40) + 8);
  v15 = v14[4];
  v22[0] = v14[3];
  v22[1] = v15;
  v16 = v14[6];
  v22[2] = v14[5];
  v22[3] = v16;
  pv_transform_PVCGPointQuad_between_coordinate_systems(v22, *(a1 + 112), *(a1 + 116), v23, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v17 = *(*(a1 + 40) + 8);
  result = *v23;
  v19 = v23[1];
  v21 = v23[2];
  v20 = v23[3];
  v17[3] = v23[0];
  v17[4] = v19;
  v17[5] = v21;
  v17[6] = v20;
  return result;
}

void __116__PVMotionEffectTextComponent_textCornersAtTime_index_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) motionEffect];
  v5 = [v4 transformComponent];
  v6 = v5;
  v7 = *(*(a1 + 40) + 8);
  v8 = v7[4];
  v18[0] = v7[3];
  v18[1] = v8;
  v9 = v7[6];
  v18[2] = v7[5];
  v18[3] = v9;
  v10 = *(a1 + 56);
  v16 = *(a1 + 60);
  v17 = *(a1 + 76);
  v14 = *(a1 + 84);
  v15 = *(a1 + 100);
  if (v5)
  {
    [v5 transformObjectCornersToImage_NoLock:v18 objectID:v10 timelineTime:&v16 componentTime:&v14 flatten:0 documentInfo:*(a1 + 48) properties:v3];
    v7 = *(*(a1 + 40) + 8);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
  }

  v11 = v20;
  v13 = v21;
  v12 = v22;
  v7[3] = v19;
  v7[4] = v11;
  v7[5] = v13;
  v7[6] = v12;
}

- (id)textObjectIDs_NoLock:(const void *)lock
{
  v3 = [(PVMotionEffectTextComponent *)self _textObjectIDs_NoLock:lock];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v4[1] - *v4) >> 2];
    v6 = v4[1] - *v4;
    if (v6)
    {
      v7 = 0;
      v8 = v6 >> 2;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      do
      {
        if (v7 >= (v4[1] - *v4) >> 2)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*v4 + 4 * v7)];
        [v5 addObject:v10];

        ++v7;
      }

      while (v9 != v7);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)_textObjectIDs_NoLock:(const void *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  result = self->_textObjectIDs;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)beginEditingTextAtIndex:(unsigned int)index
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __55__PVMotionEffectTextComponent_beginEditingTextAtIndex___block_invoke;
  v6[3] = &unk_279AA53F0;
  v6[4] = self;
  indexCopy = index;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];
}

void __55__PVMotionEffectTextComponent_beginEditingTextAtIndex___block_invoke(uint64_t a1, void **a2)
{
  [*(a1 + 32) disableRenderingTextObjectAtIndex_NoLock:*(a1 + 40) documentInfo:a2];
  v3.var0 = 0;
  PCString::set(&v3, @"IsEditingText");
  OZXSetPublishedCheckBox(*a2, &v3, 1u);
  PCString::~PCString(&v3);
}

- (void)endEditingTextAtIndex:(unsigned int)index
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __53__PVMotionEffectTextComponent_endEditingTextAtIndex___block_invoke;
  v6[3] = &unk_279AA53F0;
  v6[4] = self;
  indexCopy = index;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];
}

void __53__PVMotionEffectTextComponent_endEditingTextAtIndex___block_invoke(uint64_t a1, void **a2)
{
  [*(a1 + 32) enableRenderingTextObjectAtIndex_NoLock:*(a1 + 40) documentInfo:a2];
  v4.var0 = 0;
  PCString::set(&v4, @"IsEditingText");
  OZXSetPublishedCheckBox(*a2, &v4, 0);
  [*(a1 + 32) resetDefaultStrings:a2];
  [*(a1 + 32) storeDefaultStrings:a2];
  PCString::~PCString(&v4);
}

- (void)enableRenderingTextObjectAtIndex_NoLock:(unsigned int)lock documentInfo:(const void *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v7 = [(PVMotionEffectTextComponent *)self _textObjectIDs_NoLock:info];
  v8 = v7;
  if (lock < ((v7[1] - *v7) >> 2))
  {
    OZXDisableRenderingObject(*info, *(*v7 + 4 * lock), 0);
  }

  if ([(PVMotionEffectTextComponent *)self hasEmojiRenderingWorkaround]&& v8[1] - *v8 == 8)
  {
    OZXDisableRenderingObject(*info, *(*v8 + 4), 0);
  }

  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect3 setInspectableProperty:0 forKey:@"kPVTextRenderingDisabled"];

  motionEffect4 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect4 didSetCacheInvalidatingParameter_NoLock:MEMORY[0x277CBEC28] forKey:@"kPVTextRenderingDisabled"];
}

- (void)disableRenderingTextObjectAtIndex_NoLock:(unsigned int)lock documentInfo:(const void *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v7 = [(PVMotionEffectTextComponent *)self _textObjectIDs_NoLock:info];
  v8 = v7;
  if (lock < ((v7[1] - *v7) >> 2))
  {
    OZXDisableRenderingObject(*info, *(*v7 + 4 * lock), 1);
  }

  if ([(PVMotionEffectTextComponent *)self hasEmojiRenderingWorkaround]&& v8[1] - *v8 == 8)
  {
    OZXDisableRenderingObject(*info, *(*v8 + 4), 1);
  }

  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect3 setInspectableProperty:MEMORY[0x277CBEC38] forKey:@"kPVTextRenderingDisabled"];

  motionEffect4 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect4 didSetCacheInvalidatingParameter_NoLock:MEMORY[0x277CBEC38] forKey:@"kPVTextRenderingDisabled"];
}

- (void)setupTitleParameters:(id)parameters allProperties:(id)properties documentInfo:(const void *)info
{
  v151 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  propertiesCopy = properties;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v11 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v149[0] = @"BackgroundColor";
  v149[1] = @"PrimaryColor";
  v149[2] = @"SecondaryColor";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
  v13 = [v12 countByEnumeratingWithState:&v143 objects:v150 count:16];
  if (v13)
  {
    v14 = *v144;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v144 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v143 + 1) + 8 * i);
        v17 = [parametersCopy objectForKeyedSubscript:v16];
        v18 = v17 == 0;

        if (!v18)
        {
          v19 = [v11 objectForKeyedSubscript:v16];
          v142.var0 = 0;
          PCString::set(&v142, v19);

          v20 = [parametersCopy objectForKeyedSubscript:v16];
          v140.var0 = 0;
          v141.var0 = 0;
          v139 = 0.0;
          [v20 getRed:&v141 green:&v140 blue:&v139 alpha:0];
          OZXSetPublishedRGBColor(*info, &v142, *&v141.var0, *&v140.var0, v139);

          PCString::~PCString(&v142);
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v143 objects:v150 count:16];
    }

    while (v13);
  }

  v21 = [parametersCopy objectForKeyedSubscript:@"TitleStyle"];
  v22 = v21 == 0;

  if (!v22)
  {
    v142.var0 = 0;
    PCString::set(&v142, @"TitleStyle");
    v23 = *info;
    v24 = [parametersCopy objectForKeyedSubscript:@"TitleStyle"];
    OZXSetPublishedPopup(v23, &v142, [v24 intValue]);

    PCString::~PCString(&v142);
  }

  v25 = [parametersCopy objectForKeyedSubscript:@"kPVFlipTextKey"];
  v26 = v25 == 0;

  if (!v26)
  {
    v27 = [parametersCopy objectForKeyedSubscript:@"kPVFlipTextKey"];
    bOOLValue = [v27 BOOLValue];

    v29 = [v11 objectForKeyedSubscript:@"kPVFlipTextKey"];
    v142.var0 = 0;
    PCString::set(&v142, v29);

    OZXSetPublishedCheckBox(*info, &v142, bOOLValue);
    motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
    v31 = [parametersCopy objectForKeyedSubscript:@"kPVFlipTextKey"];
    v32 = [motionEffect3 didSetCacheInvalidatingParameter_NoLock:v31 forKey:@"kPVFlipTextKey"];

    if (v32)
    {
      v33 = +[PVHostApplicationDelegateHandler sharedInstance];
      wantsSameAlignmentForAllLinesOfText = [v33 wantsSameAlignmentForAllLinesOfText];

      if (wantsSameAlignmentForAllLinesOfText)
      {
        v35 = [MEMORY[0x277CBEAC0] objectForKey:@"TitleString" inDictionary:parametersCopy orInDefaultDictionary:propertiesCopy];
        if (v35)
        {
          motionEffect4 = [(PVMotionEffectComponent *)self motionEffect];
          v147 = @"TitleString";
          v148 = v35;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          [motionEffect4 setupPublishedParameters:v37];
        }
      }
    }

    PCString::~PCString(&v142);
  }

  v38 = [parametersCopy objectForKeyedSubscript:@"kPVOrientationKey"];
  v39 = v38 == 0;

  if (!v39)
  {
    v40 = [parametersCopy objectForKeyedSubscript:@"kPVOrientationKey"];
    intValue = [v40 intValue];

    v42 = [v11 objectForKeyedSubscript:@"kPVOrientationKey"];
    v142.var0 = 0;
    PCString::set(&v142, v42);

    OZXSetPublishedPopup(*info, &v142, intValue);
    PCString::~PCString(&v142);
  }

  v43 = [parametersCopy objectForKeyedSubscript:@"MainTitleFontName"];
  v44 = v43 == 0;

  if (!v44)
  {
    v45 = [parametersCopy objectForKeyedSubscript:@"MainTitleFontName"];
    v46 = [v11 objectForKeyedSubscript:@"TitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v46);

    OZXSetPublishedTextFont(*info, &v142, v45);
    if ([(PVMotionEffectTextComponent *)self hasEmojiRenderingWorkaround])
    {
      PCString::PCString(&v141, "MainTitleCopy");
      OZXSetPublishedTextFont(*info, &v141, v45);
      PCString::~PCString(&v141);
    }

    PCString::~PCString(&v142);
  }

  v47 = [parametersCopy objectForKeyedSubscript:@"SubTitleFontName"];
  v48 = v47 == 0;

  if (!v48)
  {
    v49 = [parametersCopy objectForKeyedSubscript:@"SubTitleFontName"];
    v50 = [v11 objectForKeyedSubscript:@"SubtitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v50);

    OZXSetPublishedTextFont(*info, &v142, v49);
    PCString::~PCString(&v142);
  }

  v51 = [parametersCopy objectForKeyedSubscript:@"SecondaryTitleFontName"];
  v52 = v51 == 0;

  if (!v52)
  {
    v53 = [parametersCopy objectForKeyedSubscript:@"SecondaryTitleFontName"];
    v54 = [v11 objectForKeyedSubscript:@"SecondaryString"];
    v142.var0 = 0;
    PCString::set(&v142, v54);

    OZXSetPublishedTextFont(*info, &v142, v53);
    PCString::~PCString(&v142);
  }

  v55 = [parametersCopy objectForKeyedSubscript:@"MainTitleFontScale"];
  v56 = v55 == 0;

  if (!v56)
  {
    v57 = [parametersCopy objectForKeyedSubscript:@"MainTitleFontScale"];
    [v57 floatValue];
    v59 = v58;

    v60 = [v11 objectForKeyedSubscript:@"TitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v60);

    OZXSetPublishedTextScale(*info, &v142, v59);
    PCString::~PCString(&v142);
  }

  v61 = [parametersCopy objectForKeyedSubscript:@"SubTitleFontScale"];
  v62 = v61 == 0;

  if (!v62)
  {
    v63 = [parametersCopy objectForKeyedSubscript:@"SubTitleFontScale"];
    [v63 floatValue];
    v65 = v64;

    v66 = [v11 objectForKeyedSubscript:@"SubtitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v66);

    OZXSetPublishedTextScale(*info, &v142, v65);
    PCString::~PCString(&v142);
  }

  v67 = [parametersCopy objectForKeyedSubscript:@"SecondaryTitleFontScale"];
  v68 = v67 == 0;

  if (!v68)
  {
    v69 = [parametersCopy objectForKeyedSubscript:@"SecondaryTitleFontScale"];
    [v69 floatValue];
    v71 = v70;

    v72 = [v11 objectForKeyedSubscript:@"SecondaryString"];
    v142.var0 = 0;
    PCString::set(&v142, v72);

    OZXSetPublishedTextScale(*info, &v142, v71);
    PCString::~PCString(&v142);
  }

  v73 = [parametersCopy objectForKeyedSubscript:@"MainTitleFontSize"];
  v74 = v73 == 0;

  if (!v74)
  {
    v75 = [parametersCopy objectForKeyedSubscript:@"MainTitleFontSize"];
    [v75 floatValue];
    v77 = v76;

    v78 = [v11 objectForKeyedSubscript:@"TitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v78);

    OZXSetPublishedTextSize(*info, &v142, v77);
    PCString::~PCString(&v142);
  }

  v79 = [parametersCopy objectForKeyedSubscript:@"SubTitleFontSize"];
  v80 = v79 == 0;

  if (!v80)
  {
    v81 = [parametersCopy objectForKeyedSubscript:@"SubTitleFontSize"];
    [v81 floatValue];
    v83 = v82;

    v84 = [v11 objectForKeyedSubscript:@"SubtitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v84);

    OZXSetPublishedTextSize(*info, &v142, v83);
    PCString::~PCString(&v142);
  }

  v85 = [parametersCopy objectForKeyedSubscript:@"SecondaryTitleFontSize"];
  v86 = v85 == 0;

  if (!v86)
  {
    v87 = [parametersCopy objectForKeyedSubscript:@"SecondaryTitleFontSize"];
    [v87 floatValue];
    v89 = v88;

    v90 = [v11 objectForKeyedSubscript:@"SecondaryString"];
    v142.var0 = 0;
    PCString::set(&v142, v90);

    OZXSetPublishedTextSize(*info, &v142, v89);
    PCString::~PCString(&v142);
  }

  v91 = [parametersCopy objectForKeyedSubscript:@"kPVTextOneLineScaleThreshold_MainTitle"];
  v92 = v91 == 0;

  if (!v92)
  {
    v93 = [v11 objectForKeyedSubscript:@"TitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v93);

    v94 = [parametersCopy objectForKeyedSubscript:@"kPVTextOneLineScaleThreshold_MainTitle"];
    [v94 doubleValue];
    v96 = v95;

    OZXSetTextOneLineScaleThreshold(*info, &v142, v96);
    PCString::~PCString(&v142);
  }

  v97 = [parametersCopy objectForKeyedSubscript:@"kPVEnableTextDynamicLineSpacing_MainTitle"];
  v98 = v97 == 0;

  if (!v98)
  {
    v99 = [v11 objectForKeyedSubscript:@"TitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v99);

    v100 = [parametersCopy objectForKeyedSubscript:@"kPVEnableTextDynamicLineSpacing_MainTitle"];
    bOOLValue2 = [v100 BOOLValue];

    OZXEnableTextDynamicLineSpacing(*info, &v142, bOOLValue2);
    if ([(PVMotionEffectTextComponent *)self hasEmojiRenderingWorkaround])
    {
      PCString::PCString(&v141, "MainTitleCopy");
      OZXEnableTextDynamicLineSpacing(*info, &v141, bOOLValue2);
      PCString::~PCString(&v141);
    }

    PCString::~PCString(&v142);
  }

  v102 = [parametersCopy objectForKeyedSubscript:@"TitleLocale"];
  v103 = v102 == 0;

  if (!v103)
  {
    v104 = [parametersCopy objectForKeyedSubscript:@"TitleLocale"];
    v105 = [v11 objectForKeyedSubscript:@"TitleString"];
    v142.var0 = 0;
    PCString::set(&v142, v105);

    OZXSetPublishedTextLocale(*info, &v142, v104);
    v106 = [v11 objectForKeyedSubscript:@"SubtitleString"];
    v141.var0 = 0;
    PCString::set(&v141, v106);

    OZXSetPublishedTextLocale(*info, &v141, v104);
    v107 = [v11 objectForKeyedSubscript:@"SecondaryString"];
    v140.var0 = 0;
    PCString::set(&v140, v107);

    OZXSetPublishedTextLocale(*info, &v140, v104);
    -[PVMotionEffectTextComponent setIsRightToLeft_NoLock:documentInfo:](self, "setIsRightToLeft_NoLock:documentInfo:", [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v104] == 2, info);
    PCString::~PCString(&v140);
    PCString::~PCString(&v141);
    PCString::~PCString(&v142);
  }

  v108 = [parametersCopy objectForKeyedSubscript:@"ImageSequencePathKey"];
  v109 = v108 == 0;

  if (!v109)
  {
    v110 = [parametersCopy objectForKeyedSubscript:@"ImageSequencePathKey"];
    v142.var0 = 0;
    PCString::set(&v142, v110);
    OZXSetImageSequencePath(*info, &v142);
    PCString::~PCString(&v142);
  }

  v111 = [parametersCopy objectForKeyedSubscript:@"StickerPathKey"];
  v112 = v111 == 0;

  if (!v112)
  {
    v142.var0 = 0;
    PCString::set(&v142, @"AnimatedLayerOpacity");
    v113 = [parametersCopy objectForKeyedSubscript:@"StickerPathKey"];
    v141.var0 = 0;
    PCString::set(&v141, v113);
    if (!OZXSetStickerPathWithPublishedParam(*info, &v142, &v141))
    {
      motionEffect5 = [(PVMotionEffectComponent *)self motionEffect];
      timelineComponent = [motionEffect5 timelineComponent];
      [timelineComponent setNeedsToUpdateSceneDuration_NoLock];
    }

    PCString::~PCString(&v141);

    PCString::~PCString(&v142);
  }

  v116 = [parametersCopy objectForKeyedSubscript:@"DisableAnimatedLayer"];
  v117 = v116 == 0;

  if (!v117)
  {
    v142.var0 = 0;
    PCString::set(&v142, @"AnimatedLayerOpacity");
    v118 = [parametersCopy objectForKeyedSubscript:@"DisableAnimatedLayer"];
    bOOLValue3 = [v118 BOOLValue];

    motionEffect6 = [(PVMotionEffectComponent *)self motionEffect];
    [motionEffect6 disableElementWithPublishedParam:&v142 disable:bOOLValue3];

    PCString::~PCString(&v142);
  }

  v121 = [parametersCopy objectForKeyedSubscript:@"DisablePosterLayer"];
  v122 = v121 == 0;

  if (!v122)
  {
    v142.var0 = 0;
    PCString::set(&v142, @"PosterImageOpacity");
    v123 = [parametersCopy objectForKeyedSubscript:@"DisablePosterLayer"];
    bOOLValue4 = [v123 BOOLValue];

    motionEffect7 = [(PVMotionEffectComponent *)self motionEffect];
    [motionEffect7 disableElementWithPublishedParam:&v142 disable:bOOLValue4];

    PCString::~PCString(&v142);
  }

  v126 = [parametersCopy objectForKeyedSubscript:@"TitleString"];
  v127 = v126 == 0;

  if (!v127)
  {
    v128 = [parametersCopy objectForKeyedSubscript:@"TitleString"];
    motionEffect8 = [(PVMotionEffectComponent *)self motionEffect];
    [motionEffect8 didSetCacheInvalidatingParameter_NoLock:v128 forKey:@"TitleString"];

    -[PVMotionEffectTextComponent setIsRightToLeft_NoLock:documentInfo:](self, "setIsRightToLeft_NoLock:documentInfo:", [v128 pv_isRightToLeft], info);
  }

  v130 = [parametersCopy objectForKeyedSubscript:@"kPVTextRenderingDisabled"];
  v131 = v130 == 0;

  if (!v131)
  {
    motionEffect9 = [(PVMotionEffectComponent *)self motionEffect];
    v133 = [parametersCopy objectForKeyedSubscript:@"kPVTextRenderingDisabled"];
    [motionEffect9 didSetCacheInvalidatingParameter_NoLock:v133 forKey:@"kPVTextRenderingDisabled"];
  }

  v134 = [parametersCopy objectForKeyedSubscript:@"UseMinimumLineSpacing"];
  v135 = v134 == 0;

  if (!v135)
  {
    v136 = [parametersCopy objectForKeyedSubscript:@"UseMinimumLineSpacing"];
    bOOLValue5 = [v136 BOOLValue];

    v142.var0 = 0;
    PCString::set(&v142, @"UseMinimumLineSpacing");
    OZXSetPublishedCheckBox(*info, &v142, bOOLValue5);
    PCString::~PCString(&v142);
  }
}

- (BOOL)hasEmojiRenderingWorkaround
{
  hasEmojiRenderingWorkaround = self->_hasEmojiRenderingWorkaround;
  if (!hasEmojiRenderingWorkaround)
  {
    motionEffect = [(PVMotionEffectComponent *)self motionEffect];
    v5 = [motionEffect contentRegistryPropertyForKey:@"requireEmojiRenderingWorkaround"];

    if (v5)
    {
      v6 = v5;
      effectID = self->_hasEmojiRenderingWorkaround;
      self->_hasEmojiRenderingWorkaround = v6;
    }

    else
    {
      motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
      effectID = [motionEffect2 effectID];

      if ([effectID isEqualToString:@"4812B57C-ACB7-477C-BE5F-A8AB078788C6"] & 1) != 0 || (objc_msgSend(effectID, "isEqualToString:", @"A1B49D52-F66A-4864-B3DC-D516010655DF") & 1) != 0 || (objc_msgSend(effectID, "isEqualToString:", @"279AFED2-5BC5-4038-B194-CCC10C505B14") & 1) != 0 || (objc_msgSend(effectID, "isEqualToString:", @"459DF362-0E9D-49D1-BE0A-3ADE6FB7A8FD"))
      {
        v9 = 1;
      }

      else
      {
        v9 = [effectID isEqualToString:@"504EC51C-D61E-40D8-B622-DBDFD8F3B553"];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v11 = self->_hasEmojiRenderingWorkaround;
      self->_hasEmojiRenderingWorkaround = v10;
    }

    hasEmojiRenderingWorkaround = self->_hasEmojiRenderingWorkaround;
  }

  return [(NSNumber *)hasEmojiRenderingWorkaround BOOLValue];
}

- (BOOL)supportsFlippingText
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v3 = [motionEffect supportsParam:@"FlipText"];

  return v3;
}

- (BOOL)supportsOrientation
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v3 = [motionEffect supportsParam:@"Orientation"];

  return v3;
}

- (BOOL)isTextFlipped
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __44__PVMotionEffectTextComponent_isTextFlipped__block_invoke;
  v5[3] = &unk_279AA5440;
  v5[4] = self;
  v5[5] = &v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v5];

  LOBYTE(motionEffect) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return motionEffect;
}

void __44__PVMotionEffectTextComponent_isTextFlipped__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v5 = [v4 publishedParams_NoLock:a2];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __44__PVMotionEffectTextComponent_isTextFlipped__block_invoke_2;
  v6[3] = &unk_279AA5418;
  v6[4] = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v6];
}

void __44__PVMotionEffectTextComponent_isTextFlipped__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 objectForKeyedSubscript:@"PVEffectParam_NameKey"];
  v7 = [@"FlipText" isEqualToString:v6];

  if (v7)
  {
    v8 = [v9 objectForKeyedSubscript:@"PVEffectParam_ValueKey"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 BOOLValue];
    *a4 = 1;
  }
}

- (BOOL)isTitleCard
{
  isTitleCard = self->_isTitleCard;
  if (!isTitleCard)
  {
    motionEffect = [(PVMotionEffectComponent *)self motionEffect];
    v5 = [motionEffect contentRegistryPropertyForKey:@"effectType"];

    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isEqualToString:", @"TitleCard"}];
      effectID = self->_isTitleCard;
      self->_isTitleCard = v6;
    }

    else
    {
      motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
      effectID = [motionEffect2 effectID];

      if (([effectID isEqualToString:@"7246D03C-508A-4B71-AE0F-5526207AF4A4"] & 1) != 0
        || ([effectID isEqualToString:@"271A5AB5-DC8D-4362-A0B3-0BD771DFDF81"] & 1) != 0
        || ([effectID isEqualToString:@"B4508C18-9B92-45C4-AC68-23C4B473648C"] & 1) != 0
        || ([effectID isEqualToString:@"99A5B4EB-6200-4785-9020-151A86F044F9"] & 1) != 0
        || ([effectID isEqualToString:@"254E82A1-5A1E-4DE3-AF74-5AD853EF8FE1"] & 1) != 0
        || ([effectID isEqualToString:@"DE85B884-F04F-4474-952C-50F14AACABB4"] & 1) != 0
        || ([effectID isEqualToString:@"C2924EA0-DDAB-470F-B5A9-5E8A5BD58C3E"] & 1) != 0
        || ([effectID isEqualToString:@"3DBFF351-E2F1-4E8F-88D1-8A412C3351A6"] & 1) != 0
        || ([effectID isEqualToString:@"4812B57C-ACB7-477C-BE5F-A8AB078788C6"] & 1) != 0
        || ([effectID isEqualToString:@"1392D357-224C-4D93-A0CE-9DAAF74CF2B0"] & 1) != 0
        || ([effectID isEqualToString:@"EA557219-697D-4079-8F57-FBC08826275F"] & 1) != 0
        || ([effectID isEqualToString:@"A1B49D52-F66A-4864-B3DC-D516010655DF"] & 1) != 0
        || ([effectID isEqualToString:@"E3E384F3-992E-4F31-BA6E-77DA8AFA9F7A"] & 1) != 0
        || ([effectID isEqualToString:@"EAD64524-5447-4179-A9C5-6D4C43197DD1"] & 1) != 0
        || ([effectID isEqualToString:@"709F905F-478C-4C74-8563-40BC1F1E4CA4"] & 1) != 0
        || ([effectID isEqualToString:@"EBDD7776-9473-4AC0-A8DD-6D85EA813A47"] & 1) != 0
        || ([effectID isEqualToString:@"4F246C30-ECDF-41B0-BC48-52B2FD46CDFE"] & 1) != 0
        || ([effectID isEqualToString:@"9BC549DA-AF63-4462-B607-721FA91BC04B"] & 1) != 0
        || ([effectID isEqualToString:@"7DACC129-7A01-4850-A0D6-384529E49E62"] & 1) != 0
        || ([effectID isEqualToString:@"2D2CA707-0CA2-45FA-82F5-33BE55AA45E3"] & 1) != 0
        || ([effectID isEqualToString:@"1058897B-324A-491F-B712-36418CC48435"] & 1) != 0
        || ([effectID isEqualToString:@"50B6BB27-38F9-48B7-AE5C-CFE23C1C2FC3"] & 1) != 0
        || ([effectID isEqualToString:@"F00F45D2-4750-4E32-8086-EE791D0EBA02"] & 1) != 0
        || ([effectID isEqualToString:@"49993B68-E73C-4BC7-B5E2-C98BC6DDFFD0"] & 1) != 0
        || ([effectID isEqualToString:@"44D6408C-1870-4E24-BC39-A2A22138E84C"] & 1) != 0
        || ([effectID isEqualToString:@"1BE94FDB-1DA1-4CDD-B936-891D15D82AA2"] & 1) != 0
        || ([effectID isEqualToString:@"9455BB82-099D-471A-8DB0-EC7716C4635D"] & 1) != 0
        || ([effectID isEqualToString:@"3F8EFC0A-43D8-43F9-AECE-5B501705DCBC"] & 1) != 0
        || ([effectID isEqualToString:@"ECE34BCE-E3CD-4AFB-B1A2-88D110B26355"] & 1) != 0
        || ([effectID isEqualToString:@"1A1FE60F-F11A-45E6-86F9-0FB7E019EA2F"] & 1) != 0
        || ([effectID isEqualToString:@"EA8EEFBD-9927-4408-ADBF-9AAF5BC4C5DD"] & 1) != 0
        || ([effectID isEqualToString:@"6D70E926-E76E-4D79-9BAB-0E9993A0CB00"] & 1) != 0
        || ([effectID isEqualToString:@"F233206A-EACA-49EF-82E2-EC00B5BA47C7"] & 1) != 0
        || ([effectID isEqualToString:@"3BD15E1F-1038-4574-8364-969806396CA7"] & 1) != 0
        || ([effectID isEqualToString:@"B42641D8-196D-4C9F-952E-30572B1D39C7"] & 1) != 0
        || ([effectID isEqualToString:@"B5CD8914-97CB-4C88-BAFE-E25495D956B9"] & 1) != 0
        || ([effectID isEqualToString:@"AA515142-046C-4184-9FA2-02692A0621A5"] & 1) != 0
        || ([effectID isEqualToString:@"3FAC5760-CD6E-4342-8892-75CBA062A1E7"] & 1) != 0
        || ([effectID isEqualToString:@"DFE54E4F-314B-4BD0-9FB0-2D5CE51CB393"] & 1) != 0
        || ([effectID isEqualToString:@"55DA00BC-CF8F-4502-B002-FF0DAA3706A8"] & 1) != 0
        || ([effectID isEqualToString:@"E94F8545-F15D-49A1-82CC-E723C33E2DA9"] & 1) != 0
        || ([effectID isEqualToString:@"26BA43BE-C91B-4788-A117-7825B65AF384"] & 1) != 0
        || ([effectID isEqualToString:@"9E9F5A0E-4121-4314-8CCC-7A7AF3F53CC1"] & 1) != 0
        || ([effectID isEqualToString:@"0164A73D-B58B-432F-8C92-BFE5BAD0F68F"] & 1) != 0
        || ([effectID isEqualToString:@"56CD5EB8-CA98-4577-B335-7808A8EC95E0"] & 1) != 0
        || ([effectID isEqualToString:@"83DA2F6E-6F9C-4B03-A72A-8EA2A8C00B7D"] & 1) != 0
        || ([effectID isEqualToString:@"641AED77-1D8F-4F3D-B7D2-062DE10FF322"] & 1) != 0
        || ([effectID isEqualToString:@"04E9BBDA-A24F-40B3-AD78-DB2EF3EF51C9"] & 1) != 0
        || ([effectID isEqualToString:@"7C3A7585-981D-4156-8D6C-0D15E81ECBDA"] & 1) != 0
        || ([effectID isEqualToString:@"02C3D18A-FB4F-4FC4-A9EB-AB550BB20695"] & 1) != 0
        || ([effectID isEqualToString:@"1CFC5B4B-A907-4C4C-8982-87EE7C3C0C99"] & 1) != 0
        || ([effectID isEqualToString:@"87560453-78EA-4306-911B-9C16A5874240"] & 1) != 0
        || ([effectID isEqualToString:@"5D25D471-2949-4E48-A878-58598969A059"] & 1) != 0
        || ([effectID isEqualToString:@"0BAD4C9D-E175-4387-812E-746F63C1EE82"] & 1) != 0
        || ([effectID isEqualToString:@"D03483F6-3B8D-406E-916E-DC0508EF2CF4"] & 1) != 0
        || ([effectID isEqualToString:@"40C0065E-E0B8-4AE3-A34D-2D0146D63A0C"] & 1) != 0
        || ([effectID isEqualToString:@"8B16DA42-A6C8-4010-9994-749CA429CD2D"] & 1) != 0
        || ([effectID isEqualToString:@"BDB422F3-8488-4D47-BBF7-2FF167B3DD9C"] & 1) != 0
        || ([effectID isEqualToString:@"4305C5A2-F115-40A1-A8AB-E497BA1DEE39"] & 1) != 0
        || ([effectID isEqualToString:@"C218EAE5-39AE-4D86-A3AF-B5FCB873E0A0"] & 1) != 0
        || ([effectID isEqualToString:@"CF85F12C-A9C7-4185-9A81-6560C3EA4EB2"] & 1) != 0
        || ([effectID isEqualToString:@"279AFED2-5BC5-4038-B194-CCC10C505B14"] & 1) != 0
        || ([effectID isEqualToString:@"E744F8F4-38A4-4D93-834B-10D46D8D7AE7"] & 1) != 0
        || ([effectID isEqualToString:@"13E0CC97-2290-4865-849A-E3A37164105B"] & 1) != 0
        || ([effectID isEqualToString:@"459DF362-0E9D-49D1-BE0A-3ADE6FB7A8FD"] & 1) != 0
        || ([effectID isEqualToString:@"906A2568-96A4-43B1-AD4E-BBBD383D4646"] & 1) != 0
        || ([effectID isEqualToString:@"CE6C6C3F-AE69-4516-B2C3-1F4191B27318"] & 1) != 0
        || ([effectID isEqualToString:@"20ACE5A4-BE22-4541-BCD9-FC6A8D1E266D"] & 1) != 0
        || ([effectID isEqualToString:@"32FBEABC-4881-4154-B9A7-79FD6ECE5ECD"] & 1) != 0
        || ([effectID isEqualToString:@"A5A681D7-8C51-402C-9A15-4B996AE38E45"] & 1) != 0
        || ([effectID isEqualToString:@"82EDB011-4CAF-4A22-B24B-D99814B0D059"] & 1) != 0
        || ([effectID isEqualToString:@"01A2D980-5125-43CB-826E-A45E1CDF83C5"] & 1) != 0
        || ([effectID isEqualToString:@"287BC0EB-7624-40DB-87C0-9891C8A752A2"] & 1) != 0
        || ([effectID isEqualToString:@"8440623A-D290-4762-9893-EB73D0CAE529"] & 1) != 0
        || ([effectID isEqualToString:@"75D7C5F6-2AE1-408F-827D-B3A9A87CDB98"] & 1) != 0
        || ([effectID isEqualToString:@"86133246-DF67-47C1-A0B0-055E581B662D"] & 1) != 0
        || ([effectID isEqualToString:@"6ED63A65-3A1C-44EE-ABC2-D8B4ED9B86D1"] & 1) != 0
        || ([effectID isEqualToString:@"A63DE1CB-B1D9-436F-B416-7AB9E2D2AB30"] & 1) != 0
        || ([effectID isEqualToString:@"1A58D239-4B27-40F9-9950-91EC95D51FE5"] & 1) != 0
        || ([effectID isEqualToString:@"7124BE8D-8171-4151-B481-BDE7EB5F300F"] & 1) != 0
        || ([effectID isEqualToString:@"70514DD2-9BE8-4393-944B-789C75C90D05"] & 1) != 0
        || ([effectID isEqualToString:@"082A9F1A-894D-43E2-9A0B-A7FACFC7E244"] & 1) != 0
        || ([effectID isEqualToString:@"E633E06F-3407-4995-B4EF-2C5A98CA87AC"] & 1) != 0
        || ([effectID isEqualToString:@"1AC46DD5-7F6E-4289-9AC7-0E2D542B118D"] & 1) != 0
        || ([effectID isEqualToString:@"D2381DA0-0FFA-4058-9160-386F6C03A7AE"] & 1) != 0
        || ([effectID isEqualToString:@"ECB457A2-D69C-4208-AA7E-C6413F9637C6"] & 1) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = [effectID isEqualToString:@"EDFCC454-8DB8-4DBC-A6C9-0667BD020A7F"];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v11 = self->_isTitleCard;
      self->_isTitleCard = v10;
    }

    isTitleCard = self->_isTitleCard;
  }

  return [(NSNumber *)isTitleCard BOOLValue];
}

- (int)orientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __42__PVMotionEffectTextComponent_orientation__block_invoke;
  v5[3] = &unk_279AA5440;
  v5[4] = self;
  v5[5] = &v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v5];

  LODWORD(motionEffect) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return motionEffect;
}

void __42__PVMotionEffectTextComponent_orientation__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v5 = [v4 publishedParams_NoLock:a2];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __42__PVMotionEffectTextComponent_orientation__block_invoke_2;
  v6[3] = &unk_279AA5418;
  v6[4] = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v6];
}

void __42__PVMotionEffectTextComponent_orientation__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 objectForKeyedSubscript:@"PVEffectParam_NameKey"];
  v7 = [@"Orientation" isEqualToString:v6];

  if (v7)
  {
    v8 = [v9 objectForKeyedSubscript:@"PVEffectParam_ValueKey"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 intValue];
    *a4 = 1;
  }
}

- (BOOL)isRightToLeftWithCurrentLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v4 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:localeIdentifier] == 2;

  return v4;
}

- (void)setIsRightToLeft_NoLock:(BOOL)lock documentInfo:(const void *)info
{
  lockCopy = lock;
  v6.var0 = 0;
  PCString::set(&v6, @"IsRightToLeft");
  OZXSetPublishedCheckBox(*info, &v6, lockCopy);
  PCString::~PCString(&v6);
}

- (void)effect:(id)effect updateProperties:(id)properties allProperties:(id)allProperties
{
  effectCopy = effect;
  propertiesCopy = properties;
  allPropertiesCopy = allProperties;
  v17.receiver = self;
  v17.super_class = PVMotionEffectTextComponent;
  [(PVMotionEffectComponent *)&v17 effect:effectCopy updateProperties:propertiesCopy allProperties:allPropertiesCopy];
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = *"";
  v14[2] = __69__PVMotionEffectTextComponent_effect_updateProperties_allProperties___block_invoke;
  v14[3] = &unk_279AA5468;
  v14[4] = self;
  v12 = propertiesCopy;
  v15 = v12;
  v13 = allPropertiesCopy;
  v16 = v13;
  [motionEffect runWithDocument_NoLock:v14];
}

- (void)motionEffect:(id)effect willOpenMedia:(const void *)media properties:(id)properties
{
  effectCopy = effect;
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = PVMotionEffectTextComponent;
  [(PVMotionEffectComponent *)&v10 motionEffect:effectCopy willOpenMedia:media properties:propertiesCopy];
  [(PVMotionEffectTextComponent *)self setupTitleParameters:propertiesCopy allProperties:propertiesCopy documentInfo:media];
}

- (void)motionEffect:(id)effect didBecomeReady:(const void *)ready properties:(id)properties
{
  effectCopy = effect;
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = PVMotionEffectTextComponent;
  [(PVMotionEffectComponent *)&v10 motionEffect:effectCopy didBecomeReady:ready properties:propertiesCopy];
  [(PVMotionEffectTextComponent *)self storeDefaultStrings:ready];
  [(PVMotionEffectTextComponent *)self setIsRightToLeft_NoLock:[(PVMotionEffectTextComponent *)self isRightToLeftWithCurrentLocale] documentInfo:ready];
}

- (void)motionEffectDidUnload:(id)unload
{
  v7.receiver = self;
  v7.super_class = PVMotionEffectTextComponent;
  [(PVMotionEffectComponent *)&v7 motionEffectDidUnload:unload];
  textObjectIDs = self->_textObjectIDs;
  if (textObjectIDs)
  {
    v5 = *textObjectIDs;
    if (*textObjectIDs)
    {
      textObjectIDs[1] = v5;
      operator delete(v5);
    }

    MEMORY[0x2666E9F00](textObjectIDs, 0x10C402FEFCB83);
    self->_textObjectIDs = 0;
  }

  defaultAttributedStrings = self->_defaultAttributedStrings;
  self->_defaultAttributedStrings = 0;
}

+ (id)motionEffectPropertyKeyToPublishedParameterNameMap
{
  v9[13] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___PVMotionEffectTextComponent;
  v2 = objc_msgSendSuper2(&v7, sel_motionEffectPropertyKeyToPublishedParameterNameMap);
  v3 = [v2 mutableCopy];

  v8[0] = @"TitleString";
  v8[1] = @"SubtitleString";
  v9[0] = @"MainTitle";
  v9[1] = @"Subtitle";
  v8[2] = @"SecondaryString";
  v8[3] = @"MainTitleFontName";
  v9[2] = @"SecondaryTitle";
  v9[3] = @"MainFont";
  v8[4] = @"SubTitleFontName";
  v8[5] = @"SecondaryTitleFontName";
  v9[4] = @"SubtitleFont";
  v9[5] = @"SecondaryFont";
  v8[6] = @"BackgroundColor";
  v8[7] = @"PrimaryColor";
  v9[6] = @"BackgroundColor";
  v9[7] = @"PrimaryColor";
  v8[8] = @"SecondaryColor";
  v8[9] = @"TitleStyle";
  v9[8] = @"SecondaryColor";
  v9[9] = @"TitleStyle";
  v8[10] = @"ForceDisableBackgroundShape";
  v8[11] = @"kPVFlipTextKey";
  v9[10] = @"DisableBackgroundShape";
  v9[11] = @"FlipText";
  v8[12] = @"kPVOrientationKey";
  v9[12] = @"Orientation";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:13];
  if ([v3 count])
  {
    [v3 addEntriesFromDictionary:v4];
    v5 = v3;

    v4 = v5;
  }

  return v4;
}

- (BOOL)motionEffect:(id)effect propertiesDisableCache:(id)cache time:(id *)time forcePosterFrame:(BOOL)frame
{
  frameCopy = frame;
  cacheCopy = cache;
  v15 = *time;
  v14.receiver = self;
  v14.super_class = PVMotionEffectTextComponent;
  if ([(PVMotionEffectComponent *)&v14 motionEffect:effect propertiesDisableCache:cacheCopy time:&v15 forcePosterFrame:frameCopy])
  {
    bOOLValue = 1;
  }

  else
  {
    v12 = [cacheCopy objectForKeyedSubscript:@"kPVTextRenderingDisabled"];
    bOOLValue = [v12 BOOLValue];
  }

  return bOOLValue;
}

- (id)motionEffectPropertyKeysThatInvalidateCachedRender:(id)render
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PVMotionEffectTextComponent;
  v3 = [(PVMotionEffectComponent *)&v10 motionEffectPropertyKeysThatInvalidateCachedRender:render];
  v4 = MEMORY[0x277CBEB58];
  v11[0] = @"TitleString";
  v11[1] = @"kPVFlipTextKey";
  v11[2] = @"kPVTextRenderingDisabled";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v6 = [v4 setWithArray:v5];

  anyObject = [v3 anyObject];
  LOBYTE(v5) = anyObject == 0;

  if ((v5 & 1) == 0)
  {
    allObjects = [v3 allObjects];
    [v6 addObjectsFromArray:allObjects];
  }

  return v6;
}

- (BOOL)motionEffect:(id)effect shouldInvalidateCachedRenderForProperty:(id)property oldValue:(id)value newValue:(id)newValue
{
  effectCopy = effect;
  propertyCopy = property;
  valueCopy = value;
  newValueCopy = newValue;
  v17.receiver = self;
  v17.super_class = PVMotionEffectTextComponent;
  if ([(PVMotionEffectComponent *)&v17 motionEffect:effectCopy shouldInvalidateCachedRenderForProperty:propertyCopy oldValue:valueCopy newValue:newValueCopy])
  {
    v14 = 1;
  }

  else
  {
    if ([propertyCopy isEqualToString:@"TitleString"])
    {
      v15 = [valueCopy isEqualToString:newValueCopy];
    }

    else
    {
      if (![propertyCopy isEqualToString:@"kPVTextRenderingDisabled"] && !objc_msgSend(propertyCopy, "isEqualToString:", @"kPVFlipTextKey"))
      {
        v14 = 0;
        goto LABEL_9;
      }

      v15 = PVNumbersAreEqualAsBooleans(valueCopy, newValueCopy);
    }

    v14 = v15 ^ 1;
  }

LABEL_9:

  return v14;
}

@end