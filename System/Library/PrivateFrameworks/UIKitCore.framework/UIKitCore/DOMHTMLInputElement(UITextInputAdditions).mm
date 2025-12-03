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
  v17.receiver = self;
  v17.super_class = &off_1F01259E0;
  v2 = objc_msgSendSuper2(&v17, sel_textInputTraits);
  form = [self form];
  type = [self type];
  if (!form)
  {
    goto LABEL_13;
  }

  if ([form action])
  {
    if (([type isEqual:@"search"] & 1) == 0 && objc_msgSend(objc_msgSend(self, "name"), "rangeOfString:options:", @"search", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(objc_msgSend(self, "idName"), "rangeOfString:options:", @"search", 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([objc_msgSend(self "title")] == 0x7FFFFFFFFFFFFFFFLL)
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

  if ([form action])
  {
    v6 = [objc_msgSend(form "action")] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  if ([type isEqualToString:@"email"])
  {
    v7 = 1;
  }

  else
  {
    v7 = [type isEqualToString:@"url"];
  }

  isSecure = [self isSecure];
  LODWORD(v9) = [self _autocapitalizeType] - 1;
  if (v9 >= 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = v9;
  }

  v10 = isSecure | v6 | v7;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  [v2 setAutocapitalizationType:v11];
  v12 = [self autocorrect] & ~v10;
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
  [v2 setTextSuggestionDelegate:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(self, "ownerDocument"), "webFrame"), "webView"), "_formDelegate")}];
  [v2 setTextContentType:{objc_msgSend(self, "getAttribute:", @"autocomplete"}];
  v15 = [self getAttribute:@"inputmode"];
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

  return [self value];
}

- (uint64_t)isSecure
{
  WebThreadLock();
  type = [self type];

  return [type isEqual:@"password"];
}

- (uint64_t)isTextControl
{
  WebThreadLock();

  return [self _isTextField];
}

- (uint64_t)keyboardType
{
  WebThreadLock();
  type = [self type];
  v3 = [self getAttribute:@"pattern"];
  if (v3)
  {
    v4 = v3;
    if ([v3 isEqualToString:@"\\d*"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"[0-9]*"))
    {
      return 4;
    }
  }

  if ([type isEqualToString:@"email"])
  {
    return 7;
  }

  if ([type isEqualToString:@"number"])
  {
    return 2;
  }

  if ([type isEqualToString:@"tel"])
  {
    return 5;
  }

  if ([type isEqualToString:@"url"])
  {
    return 3;
  }

  return 0;
}

- (uint64_t)setSelectionWithPoint:()UITextInputAdditions
{
  WebThreadLock();
  v6 = vcvtd_n_f64_s32([objc_msgSend(objc_msgSend(self "ownerDocument")], 1uLL);

  return [self setSelectionWithPoint:a2 inset:{a3, v6}];
}

- (uint64_t)isEditing
{
  WebThreadLock();

  return [self isFocused];
}

@end