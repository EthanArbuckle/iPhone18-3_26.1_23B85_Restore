@interface NSError
@end

@implementation NSError

void __46__NSError_WebKitExtras___registerWebKitErrors__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v11 = MEMORY[0x1E695DF20];
  v12 = v0;
  v1 = WebLocalizedStringInternal("Content with specified MIME type can’t be shown");
  v2 = WebLocalizedStringInternal("The URL can’t be shown");
  v3 = WebLocalizedStringInternal("Frame load interrupted");
  v4 = WebLocalizedStringInternal("Not allowed to use restricted network port");
  v5 = WebLocalizedStringInternal("The URL was blocked by a content filter");
  v6 = WebLocalizedStringInternal("The plug-in can’t be found");
  v7 = WebLocalizedStringInternal("The plug-in can’t be loaded");
  v8 = WebLocalizedStringInternal("Java is unavailable");
  v9 = WebLocalizedStringInternal("Plug-in cancelled");
  v10 = WebLocalizedStringInternal("Plug-in handled load");
  [MEMORY[0x1E696ABC0] _webkit_addErrorsWithCodesAndDescriptions:objc_msgSend(v11 inDomain:{"dictionaryWithObjectsAndKeys:", v1, &unk_1F474C450, v2, &unk_1F474C468, v3, &unk_1F474C480, v4, &unk_1F474C498, v5, &unk_1F474C4B0, v6, &unk_1F474C4C8, v7, &unk_1F474C4E0, v8, &unk_1F474C4F8, v9, &unk_1F474C510, v10, &unk_1F474C528, WebLocalizedStringInternal("The current location cannot be found."), &unk_1F474C540, 0), WebKitErrorDomain}];

  objc_autoreleasePoolPop(v12);
}

@end