@interface DOMHTMLInputElement(UITextInputAdditions)
- (id)textInputTraits;
- (uint64_t)isEditing;
- (uint64_t)isSecure;
- (uint64_t)isTextControl;
- (uint64_t)keyboardType;
- (uint64_t)setSelectionWithPoint:()UITextInputAdditions;
- (uint64_t)text;
@end

@implementation DOMHTMLInputElement(UITextInputAdditions)

- (id)textInputTraits
{
  v17.receiver = a1;
  v17.super_class = &off_1F01259E0;
  v2 = objc_msgSendSuper2(&v17, sel_textInputTraits);
  v3 = [a1 form];
  v4 = [a1 type];
  if (!v3)
  {
    goto LABEL_13;
  }

  if ([v3 action])
  {
    if (([v4 isEqual:@"search"] & 1) == 0 && objc_msgSend(objc_msgSend(a1, "name"), "rangeOfString:options:", @"search", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(objc_msgSend(a1, "idName"), "rangeOfString:options:", @"search", 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([objc_msgSend(a1 "title")] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 1;
      }

      else
      {
        v5 = 6;
      }
    }

    else
    {
      v5 = 6;
    }

    [v2 setReturnKeyType:v5];
  }

  if ([v3 action])
  {
    v6 = [objc_msgSend(v3 "action")] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  if ([v4 isEqualToString:@"email"])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isEqualToString:@"url"];
  }

  v8 = [a1 isSecure];
  LODWORD(v9) = [a1 _autocapitalizeType] - 1;
  if (v9 >= 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = v9;
  }

  v10 = v8 | v6 | v7;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  [v2 setAutocapitalizationType:v11];
  v12 = [a1 autocorrect] & ~v10;
  v13 = 1;
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v2 setAutocorrectionType:v14];
  [v2 setTextSuggestionDelegate:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a1, "ownerDocument"), "webFrame"), "webView"), "_formDelegate")}];
  [v2 setTextContentType:{objc_msgSend(a1, "getAttribute:", @"autocomplete"}];
  v15 = [a1 getAttribute:@"inputmode"];
  if (([v15 hasPrefix:@"latin"] & 1) == 0)
  {
    if ([v15 hasPrefix:@"full-width-latin"])
    {
      v13 = 2;
    }

    else if ([v15 hasPrefix:@"kana"])
    {
      v13 = 3;
    }

    else if ([v15 hasPrefix:@"katakana"])
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }
  }

  [v2 setTextScriptType:v13];
  return v2;
}

- (uint64_t)text
{
  WebThreadLock();

  return [a1 value];
}

- (uint64_t)isSecure
{
  WebThreadLock();
  v2 = [a1 type];

  return [v2 isEqual:@"password"];
}

- (uint64_t)isTextControl
{
  WebThreadLock();

  return [a1 _isTextField];
}

- (uint64_t)keyboardType
{
  WebThreadLock();
  v2 = [a1 type];
  v3 = [a1 getAttribute:@"pattern"];
  if (v3)
  {
    v4 = v3;
    if ([v3 isEqualToString:@"\\d*"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"[0-9]*"))
    {
      return 4;
    }
  }

  if ([v2 isEqualToString:@"email"])
  {
    return 7;
  }

  if ([v2 isEqualToString:@"number"])
  {
    return 2;
  }

  if ([v2 isEqualToString:@"tel"])
  {
    return 5;
  }

  if ([v2 isEqualToString:@"url"])
  {
    return 3;
  }

  return 0;
}

- (uint64_t)setSelectionWithPoint:()UITextInputAdditions
{
  WebThreadLock();
  v6 = vcvtd_n_f64_s32([objc_msgSend(objc_msgSend(a1 "ownerDocument")], 1uLL);

  return [a1 setSelectionWithPoint:a2 inset:{a3, v6}];
}

- (uint64_t)isEditing
{
  WebThreadLock();

  return [a1 isFocused];
}

@end