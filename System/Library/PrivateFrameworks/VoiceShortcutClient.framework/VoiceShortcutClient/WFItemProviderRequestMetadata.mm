@interface WFItemProviderRequestMetadata
- (WFItemProviderRequestMetadata)initWithCoder:(id)a3;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)a3;
- (void)fetchLinkMetadataWithCompletion:(id)a3;
@end

@implementation WFItemProviderRequestMetadata

- (WFItemProviderRequestMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  result = [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override initWithCoder"];
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
  [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override encodeWithCoder"];
  __break(1u);
}

- (void)fetchLinkMetadataWithCompletion:(id)a3
{
  v3 = a3;
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