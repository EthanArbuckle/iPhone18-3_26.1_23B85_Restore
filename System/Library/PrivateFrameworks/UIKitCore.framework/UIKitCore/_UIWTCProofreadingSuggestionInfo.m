@interface _UIWTCProofreadingSuggestionInfo
- (_NSRange)originalRange;
- (_UIWTCProofreadingSuggestionInfo)initWithProofreadingSuggestionInfo:(id)a3 state:(int64_t)a4;
- (_UIWTCProofreadingSuggestionInfo)initWithWTTextSuggestion:(id)a3 withOffset:(unint64_t)a4 inAttributedString:(id)a5 contextID:(id)a6;
- (id)decorationContainerForSubrange:(_NSRange)a3;
- (id)description;
@end

@implementation _UIWTCProofreadingSuggestionInfo

- (_UIWTCProofreadingSuggestionInfo)initWithWTTextSuggestion:(id)a3 withOffset:(unint64_t)a4 inAttributedString:(id)a5 contextID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = _UIWTCProofreadingSuggestionInfo;
  v13 = [(_UIWTCProofreadingSuggestionInfo *)&v23 init];
  if (v13)
  {
    v14 = [v10 uuid];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_originalRange.location = [v10 originalRange] - a4;
    v13->_originalRange.length = v16;
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v18 = [v10 replacement];
    v19 = [v11 attributesAtIndex:v13->_originalRange.location effectiveRange:0];
    v20 = [v17 initWithString:v18 attributes:v19];
    attributedString = v13->_attributedString;
    v13->_attributedString = v20;

    v13->_lengthDelta = [(NSAttributedString *)v13->_attributedString length]- v13->_originalRange.length;
    v13->_state = [v10 state];
    objc_storeStrong(&v13->_contextID, a6);
  }

  return v13;
}

- (_UIWTCProofreadingSuggestionInfo)initWithProofreadingSuggestionInfo:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = _UIWTCProofreadingSuggestionInfo;
  v7 = [(_UIWTCProofreadingSuggestionInfo *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = a4;
    v9 = [v6 identifier];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 contextID];
    contextID = v8->_contextID;
    v8->_contextID = v11;

    v8->_originalRange.location = [v6 originalRange];
    v8->_originalRange.length = v13;
    v14 = [v6 attributedString];
    attributedString = v8->_attributedString;
    v8->_attributedString = v14;

    v8->_lengthDelta = [v6 lengthDelta];
    v16 = [v6 singleContainerSubrangesOfAdjustedOriginalRange];
    singleContainerSubrangesOfAdjustedOriginalRange = v8->_singleContainerSubrangesOfAdjustedOriginalRange;
    v8->_singleContainerSubrangesOfAdjustedOriginalRange = v16;

    v18 = [v6 underlineInfo];
    underlineInfo = v8->_underlineInfo;
    v8->_underlineInfo = v18;

    v20 = [v6 highlightInfo];
    highlightInfo = v8->_highlightInfo;
    v8->_highlightInfo = v20;
  }

  return v8;
}

- (id)decorationContainerForSubrange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(_UIWTCProofreadingDecorationInfo *)self->_underlineInfo containers];
  v7 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v9 = [(_UIWTCProofreadingDecorationInfo *)self->_highlightInfo containers];
    v10 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    v8 = [v9 objectForKey:v10];
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

  v11 = [(NSAttributedString *)self->_attributedString string];
  v12 = [v7 stringByAppendingFormat:@" replacement=%@", v11];

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