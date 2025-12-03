@interface _UITextKitTextRange
+ (id)rangeWithRange:(_NSRange)range affinity:(int64_t)affinity;
+ (id)rangeWithStart:(id)start end:(id)end;
+ (id)rangeWithTextContentManager:(id)manager textRanges:(id)ranges startAffinity:(int64_t)affinity endAffinity:(int64_t)endAffinity;
- (BOOL)isEqual:(id)equal;
- (NSTextRange)unionTextRange;
- (_NSRange)asRange;
- (_UITextKitTextRange)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UITextKitTextRange

- (_UITextKitTextRange)init
{
  v7.receiver = self;
  v7.super_class = _UITextKitTextRange;
  v2 = [(_UITextKitTextRange *)&v7 init];
  v3 = v2;
  if (v2)
  {
    start = v2->_start;
    v2->_start = 0;

    end = v3->_end;
    v3->_end = 0;
  }

  return v3;
}

- (NSTextRange)unionTextRange
{
  unionTextRange = self->_unionTextRange;
  if (!unionTextRange)
  {
    textKit2Ranges = self->_textKit2Ranges;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37___UITextKitTextRange_unionTextRange__block_invoke;
    v6[3] = &unk_1E7109C60;
    v6[4] = self;
    [(NSArray *)textKit2Ranges enumerateObjectsUsingBlock:v6];
    unionTextRange = self->_unionTextRange;
  }

  return unionTextRange;
}

+ (id)rangeWithStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = objc_alloc_init(_UITextKitTextRange);
  offset = [startCopy offset];
  offset2 = [endCopy offset];
  if (offset >= offset2)
  {
    v10 = endCopy;
  }

  else
  {
    v10 = startCopy;
  }

  if (offset >= offset2)
  {
    v11 = startCopy;
  }

  else
  {
    v11 = endCopy;
  }

  [(_UITextKitTextRange *)v7 setStart:v10];
  [(_UITextKitTextRange *)v7 setEnd:v11];

  return v7;
}

+ (id)rangeWithRange:(_NSRange)range affinity:(int64_t)affinity
{
  length = range.length;
  location = range.location;
  v8 = [_UITextKitTextPosition positionWithOffset:range.location affinity:affinity];
  v9 = [_UITextKitTextPosition positionWithOffset:location + length affinity:affinity];
  v10 = [self rangeWithStart:v8 end:v9];

  return v10;
}

+ (id)rangeWithTextContentManager:(id)manager textRanges:(id)ranges startAffinity:(int64_t)affinity endAffinity:(int64_t)endAffinity
{
  v47 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  rangesCopy = ranges;
  firstObject = [rangesCopy firstObject];
  lastObject = [rangesCopy lastObject];
  v39 = firstObject;
  location = [firstObject location];
  v15 = [_UITextKitTextPosition positionWithTextContentManager:managerCopy location:location affinity:affinity];

  v38 = lastObject;
  endLocation = [lastObject endLocation];
  v17 = [_UITextKitTextPosition positionWithTextContentManager:managerCopy location:endLocation affinity:endAffinity];

  v37 = v15;
  v35 = v17;
  v36 = [self rangeWithStart:v15 end:v17];
  objc_storeStrong(v36 + 4, ranges);
  v41 = managerCopy;
  documentRange = [managerCopy documentRange];
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(rangesCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = rangesCopy;
  v20 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        location2 = [documentRange location];
        v26 = v24;
        v27 = v41;
        location3 = [v26 location];
        v29 = [v27 offsetFromLocation:location2 toLocation:location3];

        endLocation2 = [v26 endLocation];

        v31 = [v27 offsetFromLocation:location2 toLocation:endLocation2];
        v32 = [MEMORY[0x1E696B098] valueWithRange:{v29, v31 - v29}];
        [v19 addObject:v32];
      }

      v21 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v21);
  }

  if ([v19 count])
  {
    v33 = v19;
  }

  else
  {
    v33 = 0;
  }

  objc_storeStrong(v36 + 6, v33);

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UITextKitTextPosition positionWithOffset:[(_UITextKitTextPosition *)self->_start offset]];
  v5 = [_UITextKitTextPosition positionWithOffset:[(_UITextKitTextPosition *)self->_end offset]];
  v6 = [_UITextKitTextRange rangeWithStart:v4 end:v5];

  v7 = [(NSArray *)self->_textKit2Ranges copy];
  v8 = v6[4];
  v6[4] = v7;

  return v6;
}

- (_NSRange)asRange
{
  offset = [(_UITextKitTextPosition *)self->_start offset];
  offset2 = [(_UITextKitTextPosition *)self->_end offset];
  v5 = offset2 - [(_UITextKitTextPosition *)self->_start offset];
  v6 = offset;
  result.length = v5;
  result.location = v6;
  return result;
}

- (unint64_t)hash
{
  offset = [(_UITextKitTextPosition *)self->_start offset];
  v4 = [(_UITextKitTextPosition *)self->_end offset]+ offset;
  return [(NSArray *)self->_textKit2Ranges count]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  _attachmentRange = [(UITextRange *)self _attachmentRange];
  if (_attachmentRange)
  {

    goto LABEL_4;
  }

  _attachmentRange2 = [equalCopy _attachmentRange];

  if (_attachmentRange2)
  {
LABEL_4:
    _attachmentRange3 = [(UITextRange *)self _attachmentRange];
    _attachmentRange4 = [equalCopy _attachmentRange];
    v9 = [_attachmentRange3 isEqual:_attachmentRange4];

    if (equalCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v9 = 1;
  if (equalCopy)
  {
LABEL_5:
    start = [(_UITextKitTextRange *)self start];
    start2 = [equalCopy start];
    if (![start isEqual:start2])
    {
      v22 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v12 = [(_UITextKitTextRange *)self end];
    v13 = [equalCopy end];
    if (([v12 isEqual:v13] & v9) != 1)
    {
      v22 = 0;
LABEL_22:

      goto LABEL_23;
    }

    textKit2Ranges = [(_UITextKitTextRange *)self textKit2Ranges];
    v15 = [textKit2Ranges count];
    if (!v15)
    {
      textKit2Ranges2 = [equalCopy textKit2Ranges];
      if (![textKit2Ranges2 count])
      {
        v22 = 1;
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v25 = textKit2Ranges2;
    }

    v26 = v15;
    textKit2Ranges3 = [(_UITextKitTextRange *)self textKit2Ranges];
    v18 = [textKit2Ranges3 count];
    textKit2Ranges4 = [equalCopy textKit2Ranges];
    if (v18 == [textKit2Ranges4 count])
    {
      textKit2Ranges5 = [(_UITextKitTextRange *)self textKit2Ranges];
      [equalCopy textKit2Ranges];
      v21 = v24 = textKit2Ranges;
      v22 = [textKit2Ranges5 isEqualToArray:v21];

      textKit2Ranges = v24;
    }

    else
    {

      v22 = 0;
    }

    textKit2Ranges2 = v25;
    if (v26)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_15:
  v22 = 0;
LABEL_24:

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _UITextKitTextRange;
  v4 = [(_UITextKitTextRange *)&v11 description];
  offset = [(_UITextKitTextPosition *)self->_start offset];
  offset2 = [(_UITextKitTextPosition *)self->_end offset];
  v7 = offset2 - [(_UITextKitTextPosition *)self->_start offset];
  textKit2Ranges = [(_UITextKitTextRange *)self textKit2Ranges];
  v9 = [v3 stringWithFormat:@"%@ (%li, %li) %lu textKit2 ranges", v4, offset, v7, objc_msgSend(textKit2Ranges, "count")];

  return v9;
}

@end