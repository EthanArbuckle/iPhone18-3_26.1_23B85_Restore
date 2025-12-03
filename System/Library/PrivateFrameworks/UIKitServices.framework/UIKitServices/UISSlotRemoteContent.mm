@interface UISSlotRemoteContent
+ (id)newLayerContext;
- (BOOL)isEqual:(id)equal;
- (CGSize)contentSize;
- (UISSlotRemoteContent)initWithCoder:(id)coder;
- (UISSlotRemoteContent)initWithContentSize:(CGSize)size contentScale:(unsigned __int8)scale localImage:(CGImage *)image toLayerContext:(id *)context;
- (id)newTouchAuthenticationSpecificationWithAuthenticationMessageContext:(unint64_t)context backgroundStatisticsRegion:(id)region backgroundStatisticsForeground:(float)foreground backgroundStatisticsPassingContrast:(float)contrast backgroundStatisticsFailingContrast:(float)failingContrast hitTestInformationMask:(unint64_t)mask initialSampleEvent:(int64_t)event secureName:(unsigned int)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISSlotRemoteContent

- (UISSlotRemoteContent)initWithContentSize:(CGSize)size contentScale:(unsigned __int8)scale localImage:(CGImage *)image toLayerContext:(id *)context
{
  height = size.height;
  width = size.width;
  v21.receiver = self;
  v21.super_class = UISSlotRemoteContent;
  v12 = [(UISSlotRemoteContent *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_contentScale = scale;
    v12->_contentSize.width = width;
    v12->_contentSize.height = height;
    v14 = *context;
    v15 = 1;
    while (1)
    {
      v16 = v15;
      if (!v14)
      {
        v14 = +[UISSlotRemoteContent newLayerContext];
      }

      createSlot = [v14 createSlot];
      v13->_slotID = createSlot;
      if (createSlot)
      {
        break;
      }

      v15 = 0;
      v14 = 0;
      v18 = 0;
      if ((v16 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    [v14 setObject:image forSlot:createSlot];
    v18 = v14;
LABEL_9:
    objc_storeStrong(context, v18);
    if (!v13->_slotID)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"UISSlotRemoteContent.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"_slotID"}];
    }
  }

  return v13;
}

- (UISSlotRemoteContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UISSlotRemoteContent;
  v5 = [(UISSlotRemoteContent *)&v10 init];
  if (v5)
  {
    v5->_contentScale = [coderCopy decodeIntForKey:@"scale"];
    [coderCopy decodeDoubleForKey:@"sizeWidth"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"sizeHeight"];
    v5->_contentSize.width = v7;
    v5->_contentSize.height = v8;
    v5->_slotID = [coderCopy decodeIntegerForKey:@"slotID"];
  }

  return v5;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  contentScale = self->_contentScale;
  coderCopy = coder;
  [coderCopy encodeInt:contentScale forKey:@"scale"];
  [coderCopy encodeDouble:@"sizeWidth" forKey:self->_contentSize.width];
  [coderCopy encodeDouble:@"sizeHeight" forKey:self->_contentSize.height];
  [coderCopy encodeInteger:self->_slotID forKey:@"slotID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_contentScale == *(equalCopy + 8) && (self->_contentSize.width == equalCopy[2] ? (v5 = self->_contentSize.height == equalCopy[3]) : (v5 = 0), v5) && self->_slotID == *(equalCopy + 8);

  return v6;
}

+ (id)newLayerContext
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69796A8];
  v7[0] = *MEMORY[0x1E69796C0];
  v7[1] = v2;
  v8[0] = MEMORY[0x1E695E118];
  v8[1] = MEMORY[0x1E695E110];
  v3 = MEMORY[0x1E6979320];
  v7[2] = *MEMORY[0x1E6979690];
  v8[2] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = [v3 remoteContextWithOptions:v4];

  [v5 setCommitPriority:1000];
  return v5;
}

- (id)newTouchAuthenticationSpecificationWithAuthenticationMessageContext:(unint64_t)context backgroundStatisticsRegion:(id)region backgroundStatisticsForeground:(float)foreground backgroundStatisticsPassingContrast:(float)contrast backgroundStatisticsFailingContrast:(float)failingContrast hitTestInformationMask:(unint64_t)mask initialSampleEvent:(int64_t)event secureName:(unsigned int)self0
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __275__UISSlotRemoteContent_newTouchAuthenticationSpecificationWithAuthenticationMessageContext_backgroundStatisticsRegion_backgroundStatisticsForeground_backgroundStatisticsPassingContrast_backgroundStatisticsFailingContrast_hitTestInformationMask_initialSampleEvent_secureName___block_invoke;
  v11[3] = &unk_1E7459598;
  v11[4] = self;
  v11[5] = context;
  regionCopy = region;
  foregroundCopy = foreground;
  contrastCopy = contrast;
  failingContrastCopy = failingContrast;
  v11[6] = mask;
  v11[7] = event;
  nameCopy = name;
  [MEMORY[0x1E698E430] buildSpecification:v11];
  return objc_claimAutoreleasedReturnValue();
}

void __275__UISSlotRemoteContent_newTouchAuthenticationSpecificationWithAuthenticationMessageContext_backgroundStatisticsRegion_backgroundStatisticsForeground_backgroundStatisticsPassingContrast_backgroundStatisticsFailingContrast_hitTestInformationMask_initialSampleEvent_secureName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v7 = a2;
  [v7 setSlotID:v3];
  [v7 setAuthenticationMessageContext:*(a1 + 40)];
  [v7 setBackgroundStatisticsRegion:*(a1 + 80)];
  LODWORD(v4) = *(a1 + 64);
  [v7 setBackgroundStatisticsForeground:v4];
  LODWORD(v5) = *(a1 + 68);
  [v7 setBackgroundStatisticsPassingContrast:v5];
  LODWORD(v6) = *(a1 + 72);
  [v7 setBackgroundStatisticsFailingContrast:v6];
  [v7 setHitTestInformationMask:*(a1 + 48)];
  [v7 setInitialSampleEvent:*(a1 + 56)];
  [v7 setSecureName:*(a1 + 76)];
}

@end