@interface IntegerByBandObj
+ (id)integerByBandWith:(id *)with;
+ (id)integerByBandWith:(id *)with withCap:(BOOL)cap;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)candidateSet;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCandidateSet:(id *)set;
@end

@implementation IntegerByBandObj

+ (id)integerByBandWith:(id *)with
{
  v4 = objc_alloc_init(self);
  v5 = *&with->var0[2];
  v7[0] = *with->var0;
  v7[1] = v5;
  [v4 setCandidateSet:v7];

  return v4;
}

+ (id)integerByBandWith:(id *)with withCap:(BOOL)cap
{
  v5 = objc_alloc_init(self);
  v6 = *&with->var0[2];
  v13[0] = *with->var0;
  v13[1] = v6;
  [v5 setCandidateSet:v13];
  for (i = 0; i != 3; ++i)
  {
    v8 = v12 + i;
    if (v5)
    {
      [v5 candidateSet];
      if (v8[24])
      {
        [v5 candidateSet];
        if (*(v11 + i) >= 6)
        {
          [v5 candidateSet];
LABEL_9:
          *(v10 + i) = 6;
          continue;
        }
      }
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      if (v8[24])
      {
        memset(v11, 0, sizeof(v11));
        if (*(v11 + i) > 5)
        {
          memset(v10, 0, sizeof(v10));
          goto LABEL_9;
        }
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  [(IntegerByBandObj *)self candidateSet];
  [v4 integerByBandWith:&v6];
  return objc_claimAutoreleasedReturnValue();
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)candidateSet
{
  v3 = *self->var1;
  *retstr->var0 = *&self->var0[1];
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setCandidateSet:(id *)set
{
  v3 = *set->var0;
  *&self->_candidateSet.valueByBand[2] = *&set->var0[2];
  *self->_candidateSet.valueByBand = v3;
}

@end