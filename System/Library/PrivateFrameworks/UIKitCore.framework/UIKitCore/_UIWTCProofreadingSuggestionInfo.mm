@interface _UIWTCProofreadingSuggestionInfo
- (_NSRange)originalRange;
- (_UIWTCProofreadingSuggestionInfo)initWithProofreadingSuggestionInfo:(id)info state:(int64_t)state;
- (_UIWTCProofreadingSuggestionInfo)initWithWTTextSuggestion:(id)suggestion withOffset:(unint64_t)offset inAttributedString:(id)string contextID:(id)d;
- (id)decorationContainerForSubrange:(_NSRange)subrange;
- (id)description;
@end

@implementation _UIWTCProofreadingSuggestionInfo

- (_UIWTCProofreadingSuggestionInfo)initWithWTTextSuggestion:(id)suggestion withOffset:(unint64_t)offset inAttributedString:(id)string contextID:(id)d
{
  suggestionCopy = suggestion;
  stringCopy = string;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = _UIWTCProofreadingSuggestionInfo;
  v13 = [(_UIWTCProofreadingSuggestionInfo *)&v23 init];
  if (v13)
  {
    uuid = [suggestionCopy uuid];
    identifier = v13->_identifier;
    v13->_identifier = uuid;

    v13->_originalRange.location = [suggestionCopy originalRange] - offset;
    v13->_originalRange.length = v16;
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    replacement = [suggestionCopy replacement];
    v19 = [stringCopy attributesAtIndex:v13->_originalRange.location effectiveRange:0];
    v20 = [v17 initWithString:replacement attributes:v19];
    attributedString = v13->_attributedString;
    v13->_attributedString = v20;

    v13->_lengthDelta = [(NSAttributedString *)v13->_attributedString length]- v13->_originalRange.length;
    v13->_state = [suggestionCopy state];
    objc_storeStrong(&v13->_contextID, d);
  }

  return v13;
}

- (_UIWTCProofreadingSuggestionInfo)initWithProofreadingSuggestionInfo:(id)info state:(int64_t)state
{
  infoCopy = info;
  v23.receiver = self;
  v23.super_class = _UIWTCProofreadingSuggestionInfo;
  v7 = [(_UIWTCProofreadingSuggestionInfo *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = state;
    identifier = [infoCopy identifier];
    identifier = v8->_identifier;
    v8->_identifier = identifier;

    contextID = [infoCopy contextID];
    contextID = v8->_contextID;
    v8->_contextID = contextID;

    v8->_originalRange.location = [infoCopy originalRange];
    v8->_originalRange.length = v13;
    attributedString = [infoCopy attributedString];
    attributedString = v8->_attributedString;
    v8->_attributedString = attributedString;

    v8->_lengthDelta = [infoCopy lengthDelta];
    singleContainerSubrangesOfAdjustedOriginalRange = [infoCopy singleContainerSubrangesOfAdjustedOriginalRange];
    singleContainerSubrangesOfAdjustedOriginalRange = v8->_singleContainerSubrangesOfAdjustedOriginalRange;
    v8->_singleContainerSubrangesOfAdjustedOriginalRange = singleContainerSubrangesOfAdjustedOriginalRange;

    underlineInfo = [infoCopy underlineInfo];
    underlineInfo = v8->_underlineInfo;
    v8->_underlineInfo = underlineInfo;

    highlightInfo = [infoCopy highlightInfo];
    highlightInfo = v8->_highlightInfo;
    v8->_highlightInfo = highlightInfo;
  }

  return v8;
}

- (id)decorationContainerForSubrange:(_NSRange)subrange
{
  length = subrange.length;
  location = subrange.location;
  containers = [(_UIWTCProofreadingDecorationInfo *)self->_underlineInfo containers];
  v7 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  v8 = [containers objectForKey:v7];

  if (!v8)
  {
    containers2 = [(_UIWTCProofreadingDecorationInfo *)self->_highlightInfo containers];
    v10 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    v8 = [containers2 objectForKey:v10];
  }

  return v8;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = _UIWTCProofreadingSuggestionInfo;
  v3 = [(_UIWTCProofreadingSuggestionInfo *)&v14 description];
  v4 = v3;
  state = self->_state;
  if (state > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E70F9408[state];
  }

  v7 = [v3 stringByAppendingFormat:@" state=%@ range={%lu, %lu}", v6, self->_originalRange.location, self->_originalRange.length];

  if ([(NSArray *)self->_singleContainerSubrangesOfAdjustedOriginalRange count]>= 2)
  {
    v8 = [v7 stringByAppendingFormat:@" adjusted subranges=%p", self->_singleContainerSubrangesOfAdjustedOriginalRange];

    v7 = v8;
  }

  if (self->_underlineInfo)
  {
    v9 = [v7 stringByAppendingFormat:@" underlineInfo=%p", self->_underlineInfo];

    v7 = v9;
  }

  if (self->_highlightInfo)
  {
    v10 = [v7 stringByAppendingFormat:@" highlightInfo=%p", self->_highlightInfo];

    v7 = v10;
  }

  string = [(NSAttributedString *)self->_attributedString string];
  v12 = [v7 stringByAppendingFormat:@" replacement=%@", string];

  return v12;
}

- (_NSRange)originalRange
{
  length = self->_originalRange.length;
  location = self->_originalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end