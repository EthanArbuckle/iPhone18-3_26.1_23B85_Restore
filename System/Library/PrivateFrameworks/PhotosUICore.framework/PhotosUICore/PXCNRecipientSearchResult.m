@interface PXCNRecipientSearchResult
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXCNRecipientSearchResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PXCNRecipientSearchResult;
  v4 = [(PXCNComposeRecipient *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ validationType: %ld>", v4, self->_validationType];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PXCNComposeRecipient *)self recipient];
  v5 = [v4 copy];

  v6 = [(PXCNComposeRecipient *)[PXCNRecipientSearchResult alloc] initWithRecipient:v5];
  v6->_validationType = self->_validationType;

  return v6;
}

@end