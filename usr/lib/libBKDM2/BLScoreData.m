@interface BLScoreData
- (_sEispLibDbgInfoFwCommon)readFwCommon:(const _sEispLibDbgInfoShared *)a3;
- (char)readStructure:(const _sEispLibDbgInfoShared *)a3 withId:(int)a4;
- (float)scoreVersus:(id)a3;
- (id)initFromDebugData:(id)a3;
- (unsigned)structureOffset:(const _sEispLibDbgInfoShared *)a3 withId:(int)a4;
- (void)dealloc;
@end

@implementation BLScoreData

- (id)initFromDebugData:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = [a3 bytes];
  v18.receiver = self;
  v18.super_class = BLScoreData;
  v7 = [(BLScoreData *)&v18 init];
  v8 = v7;
  if (!v7)
  {
    [BLScoreData initFromDebugData:];
    goto LABEL_9;
  }

  if (!v6)
  {
    [BLScoreData initFromDebugData:];
    goto LABEL_9;
  }

  if (*v6 != 108)
  {
    NSLog(&cfstr_EFileVersionNo.isa);
LABEL_9:

    v8 = 0;
    goto LABEL_11;
  }

  v9 = [(BLScoreData *)v7 readFwCommon:v6];
  if (!v9)
  {
    [BLScoreData initFromDebugData:];
    goto LABEL_9;
  }

  v10 = v9;
  v11 = v9 + 35924;
  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(v9 + 35924)];
  frameNumber = v8->_frameNumber;
  v8->_frameNumber = v12;

  v8->_isIr = *(v11 + 8) == 1;
  v14 = *(v11 + 1320);
  LODWORD(v11) = *(v11 + 1325);
  memcpy(__dst, (v10 + 37250), sizeof(__dst));
  v15 = malloc_type_malloc(0x208uLL, 0x1000040EE8C0CC6uLL);
  v8->_featureVector = v15;
  if (v11 && v14 <= 0x80)
  {
    v15->var1 = v14;
    memcpy(v15, &__dst[2], 0x200uLL);
  }

  else
  {
    v15->var1 = 0;
  }

LABEL_11:
  v16 = *MEMORY[0x29EDCA608];
  return v8;
}

- (void)dealloc
{
  free(self->_featureVector);
  v3.receiver = self;
  v3.super_class = BLScoreData;
  [(BLScoreData *)&v3 dealloc];
}

- (float)scoreVersus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    var1 = self->_featureVector->var1;
    if (var1 != *([v4 featureVector] + 512))
    {
      v7 = [v5 featureVector];
      if (var1 >= *(v7 + 512))
      {
        var1 = *(v7 + 512);
      }

      NSLog(&cfstr_ComparingFeatu.isa);
    }

    if (var1)
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = self->_featureVector->var0[v8];
        v11 = [v5 featureVector];
        v9 = v9 + ((v10 - *(v11 + 4 * v8)) * (v10 - *(v11 + 4 * v8)));
        ++v8;
      }

      while (var1 != v8);
    }

    else
    {
      v9 = 0.0;
    }

    v12 = -sqrtf(v9);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (_sEispLibDbgInfoFwCommon)readFwCommon:(const _sEispLibDbgInfoShared *)a3
{
  if ([(BLScoreData *)self structureOffset:a3 withId:0]+ 39996 > a3->var4)
  {
    return 0;
  }

  return [(BLScoreData *)self readStructure:a3 withId:0];
}

- (unsigned)structureOffset:(const _sEispLibDbgInfoShared *)a3 withId:(int)a4
{
  if (a3->var3 <= a4)
  {
    return 0;
  }

  else
  {
    return a3->var7[a4];
  }
}

- (char)readStructure:(const _sEispLibDbgInfoShared *)a3 withId:(int)a4
{
  if ([BLScoreData structureOffset:"structureOffset:withId:" withId:?])
  {
    return a3 + a3->var7[a4];
  }

  else
  {
    return 0;
  }
}

@end