@interface PLRegionsClustering
+ (id)performClustering:(unint64_t)clustering dataset:(id)dataset progressBlock:(id)block;
- (id)performWithDataset:(id)dataset progressBlock:(id)block;
@end

@implementation PLRegionsClustering

+ (id)performClustering:(unint64_t)clustering dataset:(id)dataset progressBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  datasetCopy = dataset;
  blockCopy = block;
  if (clustering == 1)
  {
    v11 = objc_alloc_init(PLRegionsDensityClustering);
    [(PLRegionsDensityClustering *)v11 setAlgorithm:0];
    [(PLRegionsDensityClustering *)v11 setRemoveExtensiveClustersContainingDefiniteClusters:0];
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLRegionsClustering.m" lineNumber:49 description:{@"No clustering initialized for algorithm %lu", clustering}];

    v11 = 0;
    if (datasetCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (clustering)
  {
    goto LABEL_7;
  }

  v11 = objc_alloc_init(PLRegionsDensityClustering);
  [(PLRegionsDensityClustering *)v11 setAlgorithm:0];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (datasetCopy)
  {
LABEL_5:
    v12 = [(PLRegionsDensityClustering *)v11 performWithDataset:datasetCopy progressBlock:blockCopy];
    goto LABEL_11;
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ %@ Cannot be called with a nil dataset", buf, 0x16u);
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)performWithDataset:(id)dataset progressBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLRegionsClustering.m" lineNumber:68 description:{@"%s needs to be implemented by subclasses", "-[PLRegionsClustering performWithDataset:progressBlock:]"}];

  return MEMORY[0x1E695E0F8];
}

@end