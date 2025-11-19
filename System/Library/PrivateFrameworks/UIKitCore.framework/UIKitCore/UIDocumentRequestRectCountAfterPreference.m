@interface UIDocumentRequestRectCountAfterPreference
@end

@implementation UIDocumentRequestRectCountAfterPreference

void ___UIDocumentRequestRectCountAfterPreference_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_2;
  }

  v0 = TIGetDocumentRequestRectCountAfterValue();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_2:
    qword_1ED49F590 = 1;
    return;
  }

  qword_1ED49F590 = [v0 integerValue];
  v1 = _UIKeyboardLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "RectCountAfter";
    v4 = 2048;
    v5 = qword_1ED49F590;
    _os_log_impl(&dword_188A29000, v1, OS_LOG_TYPE_DEFAULT, "Obtained RTIDocumentRequest default %s=%ld from user defaults", &v2, 0x16u);
  }
}

@end