@interface TSTConfiguration
+ (id)sharedTableConfiguration;
+ (void)resetSharedTableConfiguration;
- (TSTConfiguration)init;
@end

@implementation TSTConfiguration

+ (id)sharedTableConfiguration
{
  if (+[TSTConfiguration sharedTableConfiguration]::onceToken != -1)
  {
    +[TSTConfiguration sharedTableConfiguration];
  }

  return sTableConfiguration;
}

uint64_t __44__TSTConfiguration_sharedTableConfiguration__block_invoke()
{
  result = objc_opt_new();
  sTableConfiguration = result;
  return result;
}

+ (void)resetSharedTableConfiguration
{
  if (sTableConfiguration)
  {

    sTableConfiguration = 0;
    sTableConfiguration = objc_opt_new();
  }
}

- (TSTConfiguration)init
{
  v5.receiver = self;
  v5.super_class = TSTConfiguration;
  v2 = [(TSTConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 68) = 0xFF0000FFFFLL;
    *(v2 + 19) = 0x7FFFFFFF;
    *(v2 + 2) = 0x1000000;
    *(v2 + 6) = 0;
    v2[14] = 0;
    v2[29] = 1;
    *(v2 + 21) = 0x10000000100;
    *(v2 + 30) = 0;
    *(v2 + 33) = 0;
    *(v2 + 37) = 65537;
    v2[41] = 0;
    v2[42] = TSUPhoneUI() ^ 1;
    v3[43] = 1;
    [v3 setTokenizeFormulaStringLiterals:1];
    [v3 setFormulaCellEditorSupportsTextTokenEditor:1];
    *(v3 + 11) = 1;
    *(v3 + 19) = 1;
    *(v3 + 15) = 16777473;
    v3[48] = 1;
    *(v3 + 49) = 0;
    [v3 setFormulaEditorEvaluatesFormulas:0];
    [v3 setShowReferenceHighlightsOnFormulaCellSelection:1];
    [v3 setCellEditorsCanScrollToNonLocalTableSelection:1];
    [v3 setSupportsComplexFilterUI:0];
    [v3 setSupportsQuickFilterUI:0];
    [v3 setAllowsFullyFilteredTables:1];
    [v3 setPasteFilterHidingAsUserHiding:0];
    TSUFormatInit();
  }

  return v3;
}

@end