@interface UAGetSharedPasteboardManagerResponseProtocolInterface
@end

@implementation UAGetSharedPasteboardManagerResponseProtocolInterface

void ___UAGetSharedPasteboardManagerResponseProtocolInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A67B88];
  v1 = _UAGetSharedPasteboardManagerResponseProtocolInterface_result;
  _UAGetSharedPasteboardManagerResponseProtocolInterface_result = v0;

  v13 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v14 = [v13 setWithObjects:{v12, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [_UAGetSharedPasteboardManagerResponseProtocolInterface_result setClasses:v14 forSelector:sel_writeLocalPasteboardToFile_itemDir_withCompletion_ argumentIndex:0 ofReply:1];
  [_UAGetSharedPasteboardManagerResponseProtocolInterface_result setClasses:v14 forSelector:sel_writeLocalPasteboardToFile_itemDir_extension_withCompletion_ argumentIndex:0 ofReply:1];
}

@end