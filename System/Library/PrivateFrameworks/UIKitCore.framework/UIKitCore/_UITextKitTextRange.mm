@interface _UITextKitTextRange
+ (id)rangeWithRange:(_NSRange)a3 affinity:(int64_t)a4;
+ (id)rangeWithStart:(id)a3 end:(id)a4;
+ (id)rangeWithTextContentManager:(id)a3 textRanges:(id)a4 startAffinity:(int64_t)a5 endAffinity:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (NSTextRange)unionTextRange;
- (_NSRange)asRange;
- (_UITextKitTextRange)init;
- (id)copyWithZone:(_NSZone *)a3;
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

+ (id)rangeWithStart:(id)a3 end:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_UITextKitTextRange);
  v8 = [v5 offset];
  v9 = [v6 offset];
  if (v8 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  if (v8 >= v9)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  [(_UITextKitTextRange *)v7 setStart:v10];
  [(_UITextKitTextRange *)v7 setEnd:v11];

  return v7;
}

+ (id)rangeWithRange:(_NSRange)a3 affinity:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [_UITextKitTextPosition positionWithOffset:a3.location affinity:a4];
  v9 = [_UITextKitTextPosition positionWithOffset:location + length affinity:a4];
  v10 = [a1 rangeWithStart:v8 end:v9];

  return v10;
}

+ (id)rangeWithTextContentManager:(id)a3 textRanges:(id)a4 startAffinity:(int64_t)a5 endAffinity:(int64_t)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [v11 firstObject];
  v13 = [v11 lastObject];
  v39 = v12;
  v14 = [v12 location];
  v15 = [_UITextKitTextPosition positionWithTextContentManager:v10 location:v14 affinity:a5];

  v38 = v13;
  v16 = [v13 endLocation];
  v17 = [_UITextKitTextPosition positionWithTextContentManager:v10 location:v16 affinity:a6];

  v37 = v15;
  v35 = v17;
  v36 = [a1 rangeWithStart:v15 end:v17];
  objc_storeStrong(v36 + 4, a4);
  v41 = v10;
  v18 = [v10 documentRange];
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
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
        v25 = [v18 location];
        v26 = v24;
        v27 = v41;
        v28 = [v26 location];
        v29 = [v27 offsetFromLocation:v25 toLocation:v28];

        v30 = [v26 endLocation];

        v31 = [v27 offsetFromLocation:v25 toLocation:v30];
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

- (id)copyWithZone:(_NSZone *)a3
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
  v3 = [(_UITextKitTextPosition *)self->_start offset];
  v4 = [(_UITextKitTextPosition *)self->_end offset];
  v5 = v4 - [(_UITextKitTextPosition *)self->_start offset];
  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (unint64_t)hash
{
  v3 = [(_UITextKitTextPosition *)self->_start offset];
  v4 = [(_UITextKitTextPosition *)self->_end offset]+ v3;
  return [(NSArray *)self->_textKit2Ranges count]^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(UITextRange *)self _attachmentRange];
  if (v5)
  {

    goto LABEL_4;
  }

  v6 = [v4 _attachmentRange];

  if (v6)
  {
LABEL_4:
    v7 = [(UITextRange *)self _attachmentRange];
    v8 = [v4 _attachmentRange];
    v9 = [v7 isEqual:v8];

    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v9 = 1;
  if (v4)
  {
LABEL_5:
    v10 = [(_UITextKitTextRange *)self start];
    v11 = [v4 start];
    if (![v10 isEqual:v11])
    {
      v22 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v12 = [(_UITextKitTextRange *)self end];
    v13 = [v4 end];
    if (([v12 isEqual:v13] & v9) != 1)
    {
      v22 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v14 = [(_UITextKitTextRange *)self textKit2Ranges];
    v15 = [v14 count];
    if (!v15)
    {
      v16 = [v4 textKit2Ranges];
      if (![v16 count])
      {
        v22 = 1;
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v25 = v16;
    }

    v26 = v15;
    v17 = [(_UITextKitTextRange *)self textKit2Ranges];
    v18 = [v17 count];
    v19 = [v4 textKit2Ranges];
    if (v18 == [v19 count])
    {
      v20 = [(_UITextKitTextRange *)self textKit2Ranges];
      [v4 textKit2Ranges];
      v21 = v24 = v14;
      v22 = [v20 isEqualToArray:v21];

      v14 = v24;
    }

    else
    {

      v22 = 0;
    }

    v16 = v25;
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
  v5 = [(_UITextKitTextPosition *)self->_start offset];
  v6 = [(_UITextKitTextPosition *)self->_end offset];
  v7 = v6 - [(_UITextKitTextPosition *)self->_start offset];
  v8 = [(_UITextKitTextRange *)self textKit2Ranges];
  v9 = [v3 stringWithFormat:@"%@ (%li, %li) %lu textKit2 ranges", v4, v5, v7, objc_msgSend(v8, "count")];

  return v9;
}

@end