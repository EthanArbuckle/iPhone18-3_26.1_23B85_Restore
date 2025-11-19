@interface PLModelMigratorRebuildProgressFraction
- (PLModelMigratorRebuildProgressFraction)initWithLegacyRecoveryEnabled:(BOOL)a3;
- (float)progressFractionForType:(unsigned __int8)a3;
@end

@implementation PLModelMigratorRebuildProgressFraction

- (float)progressFractionForType:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    v4 = 0.25;
    if ([(PLModelMigratorRebuildProgressFraction *)self isRebuildEnabled])
    {
      return v4;
    }

    v5 = ![(PLModelMigratorRebuildProgressFraction *)self isLegacyRecoveryEnabled];
    v6 = 1.0;
    goto LABEL_10;
  }

  v4 = 0.0;
  if (a3 == 1)
  {
    if (![(PLModelMigratorRebuildProgressFraction *)self isLegacyRecoveryEnabled])
    {
      return v4;
    }

    v5 = ![(PLModelMigratorRebuildProgressFraction *)self isRebuildEnabled];
    v6 = 0.5;
    v7 = 0.25;
    goto LABEL_11;
  }

  if (!a3 && [(PLModelMigratorRebuildProgressFraction *)self isRebuildEnabled])
  {
    v5 = ![(PLModelMigratorRebuildProgressFraction *)self isLegacyRecoveryEnabled];
    v6 = 0.75;
LABEL_10:
    v7 = 0.5;
LABEL_11:
    if (v5)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  return v4;
}

- (PLModelMigratorRebuildProgressFraction)initWithLegacyRecoveryEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PLModelMigratorRebuildProgressFraction;
  result = [(PLModelMigratorRebuildProgressFraction *)&v5 init];
  if (result)
  {
    result->_legacyRecoveryEnabled = a3;
  }

  return result;
}

@end