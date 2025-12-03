@interface TSTTableStylePreset
- (BOOL)isEqual:(id)equal;
- (TSTTableStyleNetwork)styleNetwork;
- (TSTTableStylePreset)initWithContext:(id)context;
- (TSTTableStylePreset)initWithStyleNetwork:(id)network index:(unint64_t)index;
- (id)p_documentRoot;
- (id)referencedStyles;
- (id)styleNetworkInStylesheet:(id)stylesheet;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)setStyleNetwork:(id)network;
@end

@implementation TSTTableStylePreset

- (void)setStyleNetwork:(id)network
{
  [(TSPObject *)self willModify];
  v5 = [network copy];

  self->mStyleNetwork = v5;
  mIndex = self->mIndex;
  if (mIndex != [(TSTTableStyleNetwork *)v5 presetIndex])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStylePreset setStyleNetwork:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStylePreset.mm"), 64, @"expected equality between %s and %s", "mIndex", "mStyleNetwork.presetIndex"}];
  }
}

- (TSTTableStyleNetwork)styleNetwork
{
  v2 = [(TSTTableStyleNetwork *)self->mStyleNetwork copy];

  return v2;
}

- (id)p_documentRoot
{
  context = [(TSPObject *)self context];

  return [(TSPObjectContext *)context documentRoot];
}

- (TSTTableStylePreset)initWithStyleNetwork:(id)network index:(unint64_t)index
{
  v12.receiver = self;
  v12.super_class = TSTTableStylePreset;
  v6 = -[TSPObject initWithContext:](&v12, sel_initWithContext_, [network context]);
  v7 = v6;
  if (v6)
  {
    v6->mIndex = index;
    v8 = [network copy];
    v7->mStyleNetwork = v8;
    if ([(TSTTableStyleNetwork *)v8 presetIndex]!= index)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStylePreset initWithStyleNetwork:index:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStylePreset.mm"), 87, @"expected equality between %s and %s", "index", "mStyleNetwork.presetIndex"}];
    }
  }

  return v7;
}

- (TSTTableStylePreset)initWithContext:(id)context
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStylePreset initWithContext:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStylePreset.mm"), 95, @"Should always be intialized with a network and a index"}];
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableStylePreset;
  [(TSTTableStylePreset *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  result = 0;
  if (v4)
  {
    v5 = v4;
    index = [(TSTTableStylePreset *)self index];
    if (index == [v5 index] && -[TSTTableStyleNetwork isEqual:](-[TSTTableStylePreset styleNetwork](self, "styleNetwork"), "isEqual:", objc_msgSend(v5, "styleNetwork")))
    {
      return 1;
    }
  }

  return result;
}

- (id)styleNetworkInStylesheet:(id)stylesheet
{
  if (self->mStyleNetwork)
  {
    return self->mStyleNetwork;
  }

  else
  {
    return [TSTTableStyleNetwork networkFromStylesheet:stylesheet presetIndex:self->mIndex];
  }
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  mStyleNetwork = self->mStyleNetwork;
  if (!mStyleNetwork)
  {
    mStyleNetwork = -[TSTTableStylePreset styleNetworkInStylesheet:](self, "styleNetworkInStylesheet:", [-[TSTTableStylePreset p_documentRoot](self "p_documentRoot")]);
  }

  v11 = [(TSSStyle *)[(TSTTableStyleNetwork *)mStyleNetwork headerRowCellStyle] valueForProperty:898];

  [v11 drawSwatchInRect:context inContext:{x, y, width, height}];
}

- (id)referencedStyles
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  styleNetwork = [(TSTTableStylePreset *)self styleNetwork];
  v5 = [(TSTTableStyleNetwork *)styleNetwork countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(styleNetwork);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(TSTTableStyleNetwork *)styleNetwork countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  tableStyle = [(TSTTableStyleNetwork *)self->mStyleNetwork tableStyle];
  objc_opt_class();
  (*(block + 2))(block, tableStyle);
  v6 = TSUDynamicCast();
  if (v6 != tableStyle)
  {
    [(TSTTableStyleNetwork *)self->mStyleNetwork setTableStyle:v6];
  }

  v7 = 0;
  do
  {
    v8 = [(TSTTableStyleNetwork *)self->mStyleNetwork cellStyleForTableArea:v7];
    objc_opt_class();
    (*(block + 2))(block, v8);
    v9 = TSUDynamicCast();
    if (v9 != v8)
    {
      [(TSTTableStyleNetwork *)self->mStyleNetwork setCellStyle:v9 forTableArea:v7];
    }

    v10 = [(TSTTableStyleNetwork *)self->mStyleNetwork textStyleForTableArea:v7];
    objc_opt_class();
    (*(block + 2))(block, v10);
    v11 = TSUDynamicCast();
    if (v11 != v10)
    {
      [(TSTTableStyleNetwork *)self->mStyleNetwork setTextStyle:v11 forTableArea:v7];
    }

    v7 = (v7 + 1);
  }

  while (v7 != 4);
  tableNameStyle = [(TSTTableStyleNetwork *)self->mStyleNetwork tableNameStyle];
  objc_opt_class();
  (*(block + 2))(block, tableNameStyle);
  v13 = TSUDynamicCast();
  if (v13 != tableNameStyle)
  {
    [(TSTTableStyleNetwork *)self->mStyleNetwork setTableNameStyle:v13];
  }

  tableNameShapeStyle = [(TSTTableStyleNetwork *)self->mStyleNetwork tableNameShapeStyle];
  objc_opt_class();
  (*(block + 2))(block, tableNameShapeStyle);
  v15 = TSUDynamicCast();
  if (v15 != tableNameShapeStyle)
  {
    v16 = v15;
    mStyleNetwork = self->mStyleNetwork;

    [(TSTTableStyleNetwork *)mStyleNetwork setTableNameShapeStyle:v16];
  }
}

@end