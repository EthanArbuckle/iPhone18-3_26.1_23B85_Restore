@interface _PSKNNModelConfiguration
- (_PSKNNModelConfiguration)initWithInteractionMechanisms:(id)a3 interactionCountMaxDepths:(id)a4 interactionHistoryRelativeStartDates:(id)a5 bundleIds:(id)a6 modelType:(int64_t)a7 clusterPruneThreshold:(unint64_t)a8 modelName:(id)a9 shouldExcludeInteractionBlock:(id)a10;
@end

@implementation _PSKNNModelConfiguration

- (_PSKNNModelConfiguration)initWithInteractionMechanisms:(id)a3 interactionCountMaxDepths:(id)a4 interactionHistoryRelativeStartDates:(id)a5 bundleIds:(id)a6 modelType:(int64_t)a7 clusterPruneThreshold:(unint64_t)a8 modelName:(id)a9 shouldExcludeInteractionBlock:(id)a10
{
  v27 = a3;
  v26 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = _PSKNNModelConfiguration;
  v19 = [(_PSKNNModelConfiguration *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_interactionMechanisms, a3);
    objc_storeStrong(&v20->_interactionCountMaxDepths, a4);
    objc_storeStrong(&v20->_interactionHistoryRelativeStartDates, a5);
    objc_storeStrong(&v20->_bundleIds, a6);
    v20->_modelType = a7;
    v20->_clusterPruneThreshold = a8;
    objc_storeStrong(&v20->_modelName, a9);
    v21 = MEMORY[0x1B8C8C060](v18);
    shouldExcludeInteractionBlock = v20->_shouldExcludeInteractionBlock;
    v20->_shouldExcludeInteractionBlock = v21;
  }

  return v20;
}

@end