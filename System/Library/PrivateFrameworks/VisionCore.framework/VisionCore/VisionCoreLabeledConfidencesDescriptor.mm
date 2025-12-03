@interface VisionCoreLabeledConfidencesDescriptor
- (BOOL)isEqual:(id)equal;
- (NSArray)labels;
- (NSArray)sortedValidLabels;
- (NSIndexSet)validLabelIndexes;
- (VisionCoreLabeledConfidencesDescriptor)initWithCoder:(id)coder;
- (VisionCoreLabeledConfidencesDescriptor)initWithName:(id)name dataType:(unint64_t)type shape:(id)shape strides:(id)strides labelsFileURL:(id)l;
- (id)description;
- (unint64_t)hash;
- (unint64_t)validLabelsCount;
- (void)_parseLabelsFileWhenSynchronizedIfNecessary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreLabeledConfidencesDescriptor

- (VisionCoreLabeledConfidencesDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VisionCoreLabeledConfidencesDescriptor;
  v5 = [(VisionCoreTensorDescriptor *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labelsURL"], v6 = objc_claimAutoreleasedReturnValue(), labelsFileURL = v5->_labelsFileURL, v5->_labelsFileURL = v6, labelsFileURL, !v5->_labelsFileURL))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VisionCoreLabeledConfidencesDescriptor;
  coderCopy = coder;
  [(VisionCoreTensorDescriptor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"labelsURL"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      labelsFileURL = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL];
      labelsFileURL2 = [(VisionCoreLabeledConfidencesDescriptor *)v5 labelsFileURL];

      v8 = [labelsFileURL isEqual:labelsFileURL2];
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
  labelsFileURL = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL];
  v5 = [labelsFileURL hash];

  return v5 ^ v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VisionCoreLabeledConfidencesDescriptor;
  v3 = [(VisionCoreTensorDescriptor *)&v8 description];
  labelsFileURL = [(VisionCoreLabeledConfidencesDescriptor *)self labelsFileURL];
  lastPathComponent = [labelsFileURL lastPathComponent];
  v6 = [v3 stringByAppendingFormat:@" %@", lastPathComponent];

  return v6;
}

- (NSArray)sortedValidLabels
{
  labels = [(VisionCoreLabeledConfidencesDescriptor *)self labels];
  validLabelIndexes = [(VisionCoreLabeledConfidencesDescriptor *)self validLabelIndexes];
  v5 = [labels objectsAtIndexes:validLabelIndexes];

  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  return v6;
}

- (NSIndexSet)validLabelIndexes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VisionCoreLabeledConfidencesDescriptor *)selfCopy _parseLabelsFileWhenSynchronizedIfNecessary];
  v3 = selfCopy->_lazilyAcquiredValidLabelIndexs;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_parseLabelsFileWhenSynchronizedIfNecessary
{
  if (self && !self[7])
  {
    labelsFileURL = [self labelsFileURL];
    labelsFileParserClass = [self labelsFileParserClass];
    v32 = 0;
    null = [MEMORY[0x1E695DFB0] null];
    v30 = 0;
    v31 = 0;
    v5 = [labelsFileParserClass parseLabels:&v32 fromContentsOfURL:labelsFileURL invalidLabelPlaceholderObject:null validLabelIndexes:&v31 error:&v30];
    v6 = v32;
    v7 = v31;
    v8 = v30;

    if (v5)
    {
      shape = [self shape];
      elementCount = [shape elementCount];

      if (elementCount == [v6 count])
      {
LABEL_8:
        v25 = [v6 copy];
        v26 = self[7];
        self[7] = v25;

        v27 = [v7 copy];
        v28 = self[8];
        self[8] = v27;

        return;
      }

      VisionCoreValidatedLog(4, @"%@ does not have the expected total label count of %lu", v11, v12, v13, v14, v15, v16, labelsFileURL);
    }

    else
    {
      localizedDescription = [v8 localizedDescription];
      VisionCoreValidatedLog(4, @"Could not obtain labels from %@ - %@", v17, v18, v19, v20, v21, v22, labelsFileURL);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VisionCoreLabeledConfidencesDescriptor *)selfCopy _parseLabelsFileWhenSynchronizedIfNecessary];
  v3 = [(NSIndexSet *)selfCopy->_lazilyAcquiredValidLabelIndexs count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)labels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VisionCoreLabeledConfidencesDescriptor *)selfCopy _parseLabelsFileWhenSynchronizedIfNecessary];
  v3 = selfCopy->_lazilyAcquiredLabels;
  objc_sync_exit(selfCopy);

  return v3;
}

- (VisionCoreLabeledConfidencesDescriptor)initWithName:(id)name dataType:(unint64_t)type shape:(id)shape strides:(id)strides labelsFileURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = VisionCoreLabeledConfidencesDescriptor;
  v14 = [(VisionCoreTensorDescriptor *)&v17 initWithName:name dataType:type shape:shape strides:strides];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_labelsFileURL, l);
  }

  return v15;
}

@end