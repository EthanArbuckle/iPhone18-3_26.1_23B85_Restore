@interface GQDTTable
- (id)defaultVectorStyleForVectorType:(int)type;
- (int)walkTableWithGenerator:(Class)generator state:(id)state;
- (void)dealloc;
- (void)setModel:(id)model;
- (void)setTableStyle:(id)style;
@end

@implementation GQDTTable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTTable;
  [(GQDGraphic *)&v3 dealloc];
}

- (void)setModel:(id)model
{
  modelCopy = model;

  self->mModel = model;
}

- (void)setTableStyle:(id)style
{
  styleCopy = style;

  self->mStyle = style;
}

- (id)defaultVectorStyleForVectorType:(int)type
{
  if (type > 6)
  {
    v5 = 100;
  }

  else
  {
    v5 = dword_5EA5C[type];
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = 0;
  if ([(GQDSStyle *)self->mStyle hasValueForObjectProperty:v5 value:v7])
  {
    return v7[0];
  }

  else
  {
    return 0;
  }
}

- (int)walkTableWithGenerator:(Class)generator state:(id)state
{
  if (self->mIsStreamed)
  {
    return 1;
  }

  result = [(objc_class *)generator beginTable:self state:?];
  if (result == 1)
  {
    result = [(objc_class *)generator beginCells:self state:state];
    if (result == 1)
    {
      v8 = [-[GQDTTable model](self "model")];
      Count = CFArrayGetCount(v8);
      v10 = Count;
      if (!Count)
      {
        goto LABEL_10;
      }

      v11 = 0;
      do
      {
        result = [(objc_class *)generator handleCell:CFArrayGetValueAtIndex(v8 state:v11++), state];
      }

      while (v11 < v10 && result == 1);
      if (result == 1)
      {
LABEL_10:
        result = [(objc_class *)generator endCells:self state:state];
        if (result == 1)
        {
          v12 = [(objc_class *)generator endTable:self state:state];
          [state setCurrentTableGenerator:0];
          return v12;
        }
      }
    }
  }

  return result;
}

@end