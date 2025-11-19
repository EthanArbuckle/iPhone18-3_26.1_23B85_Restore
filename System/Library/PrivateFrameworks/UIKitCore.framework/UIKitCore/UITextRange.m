@interface UITextRange
- (UITextRangeImpl)_isImpl;
- (_NSRange)_asNSRangeRelativeToDocument:(id)a3;
- (_NSRange)_asNSRangeRelativeToDocument:(id)a3 relativeToCurrentLine:(BOOL)a4;
- (id)_NSTextRanges;
- (id)_unionNSTextRange;
@end

@implementation UITextRange

- (id)_NSTextRanges
{
  v8[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UITextRange *)self textKit2Ranges];
    if ([v3 count])
    {
      goto LABEL_7;
    }

    v4 = [(UITextRange *)self _unionNSTextRange];
    if (v4)
    {
      v5 = v4;
      v8[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

      v3 = v6;
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (UITextRangeImpl)_isImpl
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_NSRange)_asNSRangeRelativeToDocument:(id)a3
{
  v3 = [(UITextRange *)self _asNSRangeRelativeToDocument:a3 relativeToCurrentLine:0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_asNSRangeRelativeToDocument:(id)a3 relativeToCurrentLine:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 beginningOfDocument];
  if (v4)
  {
    v8 = [v6 tokenizer];

    if (v8)
    {
      v9 = [v6 tokenizer];
      v10 = [(UITextRange *)self start];
      v11 = [v9 positionFromPosition:v10 toBoundary:4 inDirection:1];

      if (v11)
      {
        v12 = v11;

        v7 = v12;
      }
    }
  }

  v13 = [(UITextRange *)self start];
  v14 = [v6 offsetFromPosition:v7 toPosition:v13];

  v15 = [(UITextRange *)self start];
  v16 = [(UITextRange *)self end];
  v17 = [v6 offsetFromPosition:v15 toPosition:v16];

  v18 = v14;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

- (id)_unionNSTextRange
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(UITextRange *)self start];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UITextRange *)self start];
    v6 = [v5 location];

    v7 = [(UITextRange *)self end];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v9 = [(UITextRange *)self end];
      v10 = [v9 location];

      v11 = [[off_1E70ECBF0 alloc] initWithLocation:v6 endLocation:v10];
      goto LABEL_15;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v16 = [(UITextRange *)self end];
      v18 = 138412290;
      v19 = v16;
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4963F8) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [(UITextRange *)self end];
      v18 = 138412290;
      v19 = v16;
      goto LABEL_11;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    v13 = [(UITextRange *)self start];
    v18 = 138412290;
    v19 = v13;
    goto LABEL_7;
  }

  v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4963F0) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v6 = v12;
    v13 = [(UITextRange *)self start];
    v18 = 138412290;
    v19 = v13;
LABEL_7:

    goto LABEL_13;
  }

LABEL_14:
  v11 = 0;
LABEL_15:

  return v11;
}

@end