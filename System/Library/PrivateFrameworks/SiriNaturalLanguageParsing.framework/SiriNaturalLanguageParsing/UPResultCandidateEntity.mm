@interface UPResultCandidateEntity
- (NSString)higherLevelChildLabel;
- (NSString)higherLevelParentLabel;
- (UPResultCandidateEntity)initWithRange:(_NSRange)range label:(id)label text:(id)text groupId:(id)id semanticValue:(id)value sharedEntityGraph:(id)graph;
- (UPResultLeafNode)leafNodeRepresentation;
- (_NSRange)range;
- (id)_indexedLabelRepresentation;
- (id)annotatedEntityFragmentString;
@end

@implementation UPResultCandidateEntity

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)annotatedEntityFragmentString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"["];
  [v3 appendString:self->_text];
  objc_msgSend(v3, "appendString:", @"](");
  _indexedLabelRepresentation = [(UPResultCandidateEntity *)self _indexedLabelRepresentation];
  [v3 appendString:_indexedLabelRepresentation];

  if (self->_semanticValue)
  {
    [v3 appendString:@":"];
    [v3 appendString:self->_semanticValue];
  }

  [v3 appendString:@""]);

  return v3;
}

- (id)_indexedLabelRepresentation
{
  if (self->_groupId && [(UPResultCandidateEntity *)self isHigherLevelEntity])
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    higherLevelParentLabel = [(UPResultCandidateEntity *)self higherLevelParentLabel];
    [(NSString *)v3 appendString:higherLevelParentLabel];

    [(NSString *)v3 appendString:@"$"];
    groupId = [(UPResultCandidateEntity *)self groupId];
    -[NSString appendFormat:](v3, "appendFormat:", @"%lu", [groupId longValue]);

    [(NSString *)v3 appendString:@"."];
    higherLevelChildLabel = [(UPResultCandidateEntity *)self higherLevelChildLabel];
    [(NSString *)v3 appendString:higherLevelChildLabel];
  }

  else
  {
    v3 = self->_label;
  }

  return v3;
}

- (NSString)higherLevelChildLabel
{
  v3 = [(NSString *)self->_label rangeOfString:@"."];
  v5 = v3 + v4;
  label = self->_label;

  return [(NSString *)label substringFromIndex:v5];
}

- (NSString)higherLevelParentLabel
{
  v3 = [(NSString *)self->_label rangeOfString:@"."];
  label = self->_label;

  return [(NSString *)label substringToIndex:v3];
}

- (UPResultLeafNode)leafNodeRepresentation
{
  v2 = [[UPResultLeafNode alloc] initWithLabel:self->_label andText:self->_text andSemanticValue:self->_semanticValue];

  return v2;
}

- (UPResultCandidateEntity)initWithRange:(_NSRange)range label:(id)label text:(id)text groupId:(id)id semanticValue:(id)value sharedEntityGraph:(id)graph
{
  length = range.length;
  location = range.location;
  labelCopy = label;
  textCopy = text;
  idCopy = id;
  valueCopy = value;
  graphCopy = graph;
  v23.receiver = self;
  v23.super_class = UPResultCandidateEntity;
  v17 = [(UPResultCandidateEntity *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_range.location = location;
    v17->_range.length = length;
    objc_storeStrong(&v17->_label, label);
    objc_storeStrong(&v18->_text, text);
    objc_storeStrong(&v18->_groupId, id);
    objc_storeStrong(&v18->_semanticValue, value);
    objc_storeStrong(&v18->_sharedEntityGraph, graph);
  }

  return v18;
}

@end