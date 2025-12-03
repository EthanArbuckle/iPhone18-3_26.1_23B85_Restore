@interface ICSharedTracklistPosition
+ (id)playLastPositionWithAfterItemIdentifierHint:(id)hint;
+ (id)playNextPositionWithAfterItemIdentifierHint:(id)hint;
+ (id)specifiedPositionAfterItemIdentifier:(id)identifier;
@end

@implementation ICSharedTracklistPosition

+ (id)playLastPositionWithAfterItemIdentifierHint:(id)hint
{
  hintCopy = hint;
  v4 = objc_alloc_init(ICSharedTracklistPosition);
  v4->_type = 2;
  v5 = [hintCopy copy];

  afterItemIdentifier = v4->_afterItemIdentifier;
  v4->_afterItemIdentifier = v5;

  return v4;
}

+ (id)playNextPositionWithAfterItemIdentifierHint:(id)hint
{
  hintCopy = hint;
  v4 = objc_alloc_init(ICSharedTracklistPosition);
  v4->_type = 1;
  v5 = [hintCopy copy];

  afterItemIdentifier = v4->_afterItemIdentifier;
  v4->_afterItemIdentifier = v5;

  return v4;
}

+ (id)specifiedPositionAfterItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(ICSharedTracklistPosition);
  v4->_type = 0;
  v5 = [identifierCopy copy];

  afterItemIdentifier = v4->_afterItemIdentifier;
  v4->_afterItemIdentifier = v5;

  return v4;
}

@end