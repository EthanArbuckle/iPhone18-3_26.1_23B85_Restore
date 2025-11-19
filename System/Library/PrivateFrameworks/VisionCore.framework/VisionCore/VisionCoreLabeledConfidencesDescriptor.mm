@interface VisionCoreLabeledConfidencesDescriptor
- (BOOL)isEqual:(id)a3;
- (NSArray)labels;
- (NSArray)sortedValidLabels;
- (NSIndexSet)validLabelIndexes;
- (VisionCoreLabeledConfidencesDescriptor)initWithCoder:(id)a3;
- (VisionCoreLabeledConfidencesDescriptor)initWithName:(id)a3 dataType:(unint64_t)a4 shape:(id)a5 strides:(id)a6 labelsFileURL:(id)a7;
- (id)description;
- (unint64_t)hash;
- (unint64_t)validLabelsCount;
- (void)_parseLabelsFileWhenSynchronizedIfNecessary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreLabeledConfidencesDescriptor

- (VisionCoreLabeledConfidencesDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VisionCoreLabeledConfidencesDescriptor;
  v5 = [(VisionCoreTensorDescriptor *)&v10 initWithCoder:v4];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"labelsURL"], v6 = objc_claimAutoreleasedReturnValue(), labelsFileURL = v5->_labelsFileURL, v5->_labelsFileURL = v6, labelsFileURL, !v5->_labelsFileURL))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VisionCoreLabeledConfidencesDescriptor;
  v4 = a3;
  [(VisionCoreTensorDescriptor *)&v6 encodeWithCoder:v4];
  v5 = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL:v6.receiver];
  [v4 encodeObject:v5 forKey:@"labelsURL"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL];
      v7 = [(VisionCoreLabeledConfidencesDescriptor *)v5 labelsFileURL];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VisionCoreLabeledConfidencesDescriptor;
  v3 = [(VisionCoreTensorDescriptor *)&v7 hash];
  v4 = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VisionCoreLabeledConfidencesDescriptor;
  v3 = [(VisionCoreTensorDescriptor *)&v8 description];
  v4 = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL];
  v5 = [v4 lastPathComponent];
  v6 = [v3 stringByAppendingFormat:@" %@", v5];

  return v6;
}

- (NSArray)sortedValidLabels
{
  v3 = [(VisionCoreLabeledConfidencesDescriptor *)self labels];
  v4 = [(VisionCoreLabeledConfidencesDescriptor *)self validLabelIndexes];
  v5 = [v3 objectsAtIndexes:v4];

  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  return v6;
}

- (NSIndexSet)validLabelIndexes
{
  v2 = self;
  objc_sync_enter(v2);
  [(VisionCoreLabeledConfidencesDescriptor *)v2 _parseLabelsFileWhenSynchronizedIfNecessary];
  v3 = v2->_lazilyAcquiredValidLabelIndexs;
  objc_sync_exit(v2);

  return v3;
}

- (void)_parseLabelsFileWhenSynchronizedIfNecessary
{
  if (a1 && !a1[7])
  {
    v2 = [a1 labelsFileURL];
    v3 = [a1 labelsFileParserClass];
    v32 = 0;
    v4 = [MEMORY[0x1E695DFB0] null];
    v30 = 0;
    v31 = 0;
    v5 = [v3 parseLabels:&v32 fromContentsOfURL:v2 invalidLabelPlaceholderObject:v4 validLabelIndexes:&v31 error:&v30];
    v6 = v32;
    v7 = v31;
    v8 = v30;

    if (v5)
    {
      v9 = [a1 shape];
      v10 = [v9 elementCount];

      if (v10 == [v6 count])
      {
LABEL_8:
        v25 = [v6 copy];
        v26 = a1[7];
        a1[7] = v25;

        v27 = [v7 copy];
        v28 = a1[8];
        a1[8] = v27;

        return;
      }

      VisionCoreValidatedLog(4, @"%@ does not have the expected total label count of %lu", v11, v12, v13, v14, v15, v16, v2);
    }

    else
    {
      v29 = [v8 localizedDescription];
      VisionCoreValidatedLog(4, @"Could not obtain labels from %@ - %@", v17, v18, v19, v20, v21, v22, v2);
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DEC8]);

    v24 = objc_alloc_init(MEMORY[0x1E696AC90]);
    v7 = v24;
    v6 = v23;
    goto LABEL_8;
  }
}

- (unint64_t)validLabelsCount
{
  v2 = self;
  objc_sync_enter(v2);
  [(VisionCoreLabeledConfidencesDescriptor *)v2 _parseLabelsFileWhenSynchronizedIfNecessary];
  v3 = [(NSIndexSet *)v2->_lazilyAcquiredValidLabelIndexs count];
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)labels
{
  v2 = self;
  objc_sync_enter(v2);
  [(VisionCoreLabeledConfidencesDescriptor *)v2 _parseLabelsFileWhenSynchronizedIfNecessary];
  v3 = v2->_lazilyAcquiredLabels;
  objc_sync_exit(v2);

  return v3;
}

- (VisionCoreLabeledConfidencesDescriptor)initWithName:(id)a3 dataType:(unint64_t)a4 shape:(id)a5 strides:(id)a6 labelsFileURL:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = VisionCoreLabeledConfidencesDescriptor;
  v14 = [(VisionCoreTensorDescriptor *)&v17 initWithName:a3 dataType:a4 shape:a5 strides:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_labelsFileURL, a7);
  }

  return v15;
}

@end