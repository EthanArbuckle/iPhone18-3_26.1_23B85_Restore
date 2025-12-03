@interface UITextRange
- (UITextRangeImpl)_isImpl;
- (_NSRange)_asNSRangeRelativeToDocument:(id)document;
- (_NSRange)_asNSRangeRelativeToDocument:(id)document relativeToCurrentLine:(BOOL)line;
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
    textKit2Ranges = [(UITextRange *)self textKit2Ranges];
    if ([textKit2Ranges count])
    {
      goto LABEL_7;
    }

    _unionNSTextRange = [(UITextRange *)self _unionNSTextRange];
    if (_unionNSTextRange)
    {
      v5 = _unionNSTextRange;
      v8[0] = _unionNSTextRange;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

      textKit2Ranges = v6;
      goto LABEL_7;
    }
  }

  textKit2Ranges = 0;
LABEL_7:

  return textKit2Ranges;
}

- (UITextRangeImpl)_isImpl
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_NSRange)_asNSRangeRelativeToDocument:(id)document
{
  v3 = [(UITextRange *)self _asNSRangeRelativeToDocument:document relativeToCurrentLine:0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_asNSRangeRelativeToDocument:(id)document relativeToCurrentLine:(BOOL)line
{
  lineCopy = line;
  documentCopy = document;
  beginningOfDocument = [documentCopy beginningOfDocument];
  if (lineCopy)
  {
    tokenizer = [documentCopy tokenizer];

    if (tokenizer)
    {
      tokenizer2 = [documentCopy tokenizer];
      start = [(UITextRange *)self start];
      v11 = [tokenizer2 positionFromPosition:start toBoundary:4 inDirection:1];

      if (v11)
      {
        v12 = v11;

        beginningOfDocument = v12;
      }
    }
  }

  start2 = [(UITextRange *)self start];
  v14 = [documentCopy offsetFromPosition:beginningOfDocument toPosition:start2];

  start3 = [(UITextRange *)self start];
  v16 = [(UITextRange *)self end];
  v17 = [documentCopy offsetFromPosition:start3 toPosition:v16];

  v18 = v14;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

- (id)_unionNSTextRange
{
  v20 = *MEMORY[0x1E69E9840];
  start = [(UITextRange *)self start];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    start2 = [(UITextRange *)self start];
    location = [start2 location];

    v7 = [(UITextRange *)self end];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v9 = [(UITextRange *)self end];
      location2 = [v9 location];

      v11 = [[off_1E70ECBF0 alloc] initWithLocation:location endLocation:location2];
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
    location = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(location, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    start3 = [(UITextRange *)self start];
    v18 = 138412290;
    v19 = start3;
    goto LABEL_7;
  }

  v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4963F0) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    location = v12;
    start3 = [(UITextRange *)self start];
    v18 = 138412290;
    v19 = start3;
LABEL_7:

    goto LABEL_13;
  }

LABEL_14:
  v11 = 0;
LABEL_15:

  return v11;
}

@end