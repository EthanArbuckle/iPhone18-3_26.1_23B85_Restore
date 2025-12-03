@interface _PSKNNModelConfiguration
- (_PSKNNModelConfiguration)initWithInteractionMechanisms:(id)mechanisms interactionCountMaxDepths:(id)depths interactionHistoryRelativeStartDates:(id)dates bundleIds:(id)ids modelType:(int64_t)type clusterPruneThreshold:(unint64_t)threshold modelName:(id)name shouldExcludeInteractionBlock:(id)self0;
@end

@implementation _PSKNNModelConfiguration

- (_PSKNNModelConfiguration)initWithInteractionMechanisms:(id)mechanisms interactionCountMaxDepths:(id)depths interactionHistoryRelativeStartDates:(id)dates bundleIds:(id)ids modelType:(int64_t)type clusterPruneThreshold:(unint64_t)threshold modelName:(id)name shouldExcludeInteractionBlock:(id)self0
{
  mechanismsCopy = mechanisms;
  depthsCopy = depths;
  datesCopy = dates;
  idsCopy = ids;
  nameCopy = name;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = _PSKNNModelConfiguration;
  v19 = [(_PSKNNModelConfiguration *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_interactionMechanisms, mechanisms);
    objc_storeStrong(&v20->_interactionCountMaxDepths, depths);
    objc_storeStrong(&v20->_interactionHistoryRelativeStartDates, dates);
    objc_storeStrong(&v20->_bundleIds, ids);
    v20->_modelType = type;
    v20->_clusterPruneThreshold = threshold;
    objc_storeStrong(&v20->_modelName, name);
    v21 = MEMORY[0x1B8C8C060](blockCopy);
    shouldExcludeInteractionBlock = v20->_shouldExcludeInteractionBlock;
    v20->_shouldExcludeInteractionBlock = v21;
  }

  return v20;
}

@end