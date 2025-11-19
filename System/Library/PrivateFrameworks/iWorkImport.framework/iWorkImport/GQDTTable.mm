@interface GQDTTable
- (id)defaultVectorStyleForVectorType:(int)a3;
- (int)walkTableWithGenerator:(Class)a3 state:(id)a4;
- (void)dealloc;
- (void)setModel:(id)a3;
- (void)setTableStyle:(id)a3;
@end

@implementation GQDTTable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTTable;
  [(GQDGraphic *)&v3 dealloc];
}

- (void)setModel:(id)a3
{
  v5 = a3;

  self->mModel = a3;
}

- (void)setTableStyle:(id)a3
{
  v5 = a3;

  self->mStyle = a3;
}

- (id)defaultVectorStyleForVectorType:(int)a3
{
  if (a3 > 6)
  {
    v5 = 100;
  }

  else
  {
    v5 = dword_5EA5C[a3];
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

- (int)walkTableWithGenerator:(Class)a3 state:(id)a4
{
  if (self->mIsStreamed)
  {
    return 1;
  }

  result = [(objc_class *)a3 beginTable:self state:?];
  if (result == 1)
  {
    result = [(objc_class *)a3 beginCells:self state:a4];
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
        result = [(objc_class *)a3 handleCell:CFArrayGetValueAtIndex(v8 state:v11++), a4];
      }

      while (v11 < v10 && result == 1);
      if (result == 1)
      {
LABEL_10:
        result = [(objc_class *)a3 endCells:self state:a4];
        if (result == 1)
        {
          v12 = [(objc_class *)a3 endTable:self state:a4];
          [a4 setCurrentTableGenerator:0];
          return v12;
        }
      }
    }
  }

  return result;
}

@end