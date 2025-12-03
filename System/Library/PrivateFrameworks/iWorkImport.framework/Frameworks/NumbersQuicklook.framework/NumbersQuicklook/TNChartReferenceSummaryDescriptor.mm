@interface TNChartReferenceSummaryDescriptor
- (TNChartReferenceSummaryDescriptor)init;
- (TSKUIDStruct)tableUID;
- (id)tableNameWithCalcEngine:(id)engine;
- (unsigned)aggregateIndex;
- (unsigned)columnLevel;
- (unsigned)rowLevel;
@end

@implementation TNChartReferenceSummaryDescriptor

- (TNChartReferenceSummaryDescriptor)init
{
  v6.receiver = self;
  v6.super_class = TNChartReferenceSummaryDescriptor;
  v2 = [(TNChartReferenceSummaryDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    viewTractRef = v2->_viewTractRef;
    v2->_tableType = 4;
    v2->_viewTractRef = 0;
  }

  return v3;
}

- (TSKUIDStruct)tableUID
{
  v4 = objc_msgSend_viewTractRef(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_viewTractRef(self, v5, v6);
    v10 = objc_msgSend_tableUID(v7, v8, v9);
    v4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = v10;
  v13 = v4;
  result._upper = v13;
  result._lower = v12;
  return result;
}

- (id)tableNameWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v7 = objc_msgSend_viewTractRef(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_viewTractRef(self, v8, v9);
    v13 = objc_msgSend_tableUID(v10, v11, v12);
    v15 = v14;

    v17 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v16, v13, v15, engineCopy);
    v20 = v17;
    if (v17)
    {
      v7 = objc_msgSend_tableName(v17, v18, v19);

      if (v7)
      {
        v7 = objc_msgSend_tableName(v20, v21, v22);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unsigned)rowLevel
{
  viewTractRef = self->_viewTractRef;
  if (viewTractRef)
  {
    return (MEMORY[0x2821F9670])(viewTractRef, sel_rowGroupLevel);
  }

  else
  {
    return -1;
  }
}

- (unsigned)columnLevel
{
  viewTractRef = self->_viewTractRef;
  if (viewTractRef)
  {
    return (MEMORY[0x2821F9670])(viewTractRef, sel_columnGroupLevel);
  }

  else
  {
    return -1;
  }
}

- (unsigned)aggregateIndex
{
  viewTractRef = self->_viewTractRef;
  if (viewTractRef)
  {
    return (MEMORY[0x2821F9670])(viewTractRef, sel_aggregateIndexLevel);
  }

  else
  {
    return -1;
  }
}

@end