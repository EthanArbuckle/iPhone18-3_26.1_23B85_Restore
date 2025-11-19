@interface DOMHTMLTextAreaElement(UITextInputAdditions)
- (id)textInputTraits;
- (uint64_t)setSelectionWithPoint:()UITextInputAdditions;
@end

@implementation DOMHTMLTextAreaElement(UITextInputAdditions)

- (id)textInputTraits
{
  v8.receiver = a1;
  v8.super_class = &off_1F0137040;
  v2 = objc_msgSendSuper2(&v8, sel_textInputTraits);
  v3 = [a1 isSecure];
  LODWORD(v4) = [a1 _autocapitalizeType] - 1;
  if (v4 >= 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = v4;
  }

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [v2 setAutocapitalizationType:v5];
  if (((v3 ^ 1) & [a1 autocorrect]) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v2 setAutocorrectionType:v6];
  [v2 setTextSuggestionDelegate:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a1, "ownerDocument"), "webFrame"), "webView"), "_formDelegate")}];
  return v2;
}

- (uint64_t)setSelectionWithPoint:()UITextInputAdditions
{
  WebThreadLock();
  v6 = vcvtd_n_f64_s32([objc_msgSend(objc_msgSend(a1 "ownerDocument")], 1uLL);

  return [a1 setSelectionWithPoint:a2 inset:{a3, v6}];
}

@end