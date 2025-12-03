@interface WFItemProviderRequestMetadata
- (WFItemProviderRequestMetadata)initWithCoder:(id)coder;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)coder;
- (void)fetchLinkMetadataWithCompletion:(id)completion;
@end

@implementation WFItemProviderRequestMetadata

- (WFItemProviderRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  result = [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override initWithCoder"];
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override encodeWithCoder"];
  __break(1u);
}

- (void)fetchLinkMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override fetchLinkMetadataWithCompletion"];
  __break(1u);
}

- (id)registeredTypeIdentifiers
{
  result = [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override registeredTypeIdentifiers"];
  __break(1u);
  return result;
}

@end