@interface WBSReaderAvailabilityCheckResult
- (NSDictionary)combinedMetadataForTests;
- (WBSReaderAvailabilityCheckResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSReaderAvailabilityCheckResult

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_readerAvailable)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_isSameDocumentNavigation)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v6;
  v9 = [v3 stringWithFormat:@"<%@: %p isReaderAvailable = %@; isSameDocumentNavigation: %@", v5, self, v8, v7];;

  if ([(NSArray *)self->_textSamples count])
  {
    [v9 appendFormat:@"; textSamples = %lu sample(s)", -[NSArray count](self->_textSamples, "count")];
  }

  if (self->_canonicalURL)
  {
    [v9 appendFormat:@"; canonicalURL = %@", self->_canonicalURL];
  }

  [v9 appendString:@">"];

  return v9;
}

- (NSDictionary)combinedMetadataForTests
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  textSamples = self->_textSamples;
  if (textSamples)
  {
    [dictionary setObject:textSamples forKeyedSubscript:@"textSamples"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_readerAvailable;
  *(v5 + 9) = self->_isSameDocumentNavigation;
  v6 = [(NSArray *)self->_textSamples copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 10) = self->_doesPageUseSearchEngineOptimizationMetadata;
  v8 = [(NSURL *)self->_canonicalURL copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_readerAvailable forKey:@"isReaderAvailable"];
  [coderCopy encodeBool:self->_isSameDocumentNavigation forKey:@"isSameDocumentNavigation"];
  textSamples = self->_textSamples;
  if (textSamples)
  {
    [coderCopy encodeObject:textSamples forKey:@"textSamples"];
  }

  [coderCopy encodeBool:self->_doesPageUseSearchEngineOptimizationMetadata forKey:@"doesPageUseSearchEngineOptimizationMetadata"];
  canonicalURL = self->_canonicalURL;
  if (canonicalURL)
  {
    [coderCopy encodeObject:canonicalURL forKey:@"canonicalURL"];
  }
}

- (WBSReaderAvailabilityCheckResult)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = WBSReaderAvailabilityCheckResult;
  v5 = [(WBSReaderAvailabilityCheckResult *)&v15 init];
  if (v5)
  {
    v5->_readerAvailable = [coderCopy decodeBoolForKey:@"isReaderAvailable"];
    v5->_isSameDocumentNavigation = [coderCopy decodeBoolForKey:@"isSameDocumentNavigation"];
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"textSamples"];
    textSamples = v5->_textSamples;
    v5->_textSamples = v9;

    v5->_doesPageUseSearchEngineOptimizationMetadata = [coderCopy decodeBoolForKey:@"doesPageUseSearchEngineOptimizationMetadata"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalURL"];
    canonicalURL = v5->_canonicalURL;
    v5->_canonicalURL = v11;

    v13 = v5;
  }

  return v5;
}

@end