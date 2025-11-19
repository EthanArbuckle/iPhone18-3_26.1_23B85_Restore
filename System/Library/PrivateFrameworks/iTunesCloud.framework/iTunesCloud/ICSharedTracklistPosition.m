@interface ICSharedTracklistPosition
+ (id)playLastPositionWithAfterItemIdentifierHint:(id)a3;
+ (id)playNextPositionWithAfterItemIdentifierHint:(id)a3;
+ (id)specifiedPositionAfterItemIdentifier:(id)a3;
@end

@implementation ICSharedTracklistPosition

+ (id)playLastPositionWithAfterItemIdentifierHint:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICSharedTracklistPosition);
  v4->_type = 2;
  v5 = [v3 copy];

  afterItemIdentifier = v4->_afterItemIdentifier;
  v4->_afterItemIdentifier = v5;

  return v4;
}

+ (id)playNextPositionWithAfterItemIdentifierHint:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICSharedTracklistPosition);
  v4->_type = 1;
  v5 = [v3 copy];

  afterItemIdentifier = v4->_afterItemIdentifier;
  v4->_afterItemIdentifier = v5;

  return v4;
}

+ (id)specifiedPositionAfterItemIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICSharedTracklistPosition);
  v4->_type = 0;
  v5 = [v3 copy];

  afterItemIdentifier = v4->_afterItemIdentifier;
  v4->_afterItemIdentifier = v5;

  return v4;
}

@end