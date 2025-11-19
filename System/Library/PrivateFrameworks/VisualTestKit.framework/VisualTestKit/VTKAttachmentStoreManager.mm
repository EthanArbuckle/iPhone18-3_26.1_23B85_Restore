@interface VTKAttachmentStoreManager
- (NSString)itemsDirectory;
- (VTKAttachmentStoreManager)init;
- (id)saveItems:(id)a3 withID:(id)a4 testCase:(id)a5;
- (void)setItemsDirectory:(id)a3;
@end

@implementation VTKAttachmentStoreManager

- (VTKAttachmentStoreManager)init
{
  v6.receiver = self;
  v6.super_class = VTKAttachmentStoreManager;
  v2 = [(VTKAttachmentStoreManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileStoreManager = v2->_fileStoreManager;
    v2->_fileStoreManager = v3;
  }

  return v2;
}

- (id)saveItems:(id)a3 withID:(id)a4 testCase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VTKAttachmentStoreManager *)self fileStoreManager];
  v12 = [v11 saveItems:v8 withID:v9 testCase:v10];

  v13 = [v10 invocation];

  v14 = NSStringFromSelector([v13 selector]);
  v15 = [v14 stringByAppendingFormat:@"-%@", v9];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __55__VTKAttachmentStoreManager_saveItems_withID_testCase___block_invoke;
  v20[3] = &unk_C100;
  v21 = v8;
  v22 = v9;
  v23 = v12;
  v16 = v12;
  v17 = v9;
  v18 = v8;
  [XCTContext runActivityNamed:v15 block:v20];

  return 0;
}

void __55__VTKAttachmentStoreManager_saveItems_withID_testCase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __55__VTKAttachmentStoreManager_saveItems_withID_testCase___block_invoke_2;
  v12 = &unk_C0D8;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:&v9];
  v6 = [*(a1 + 48) rootFolderItemsURL];
  v7 = [v6 path];
  v8 = [XCTAttachment attachmentWithString:v7];

  [v8 setLifetime:0];
  [v8 setName:@"temporyItemsURL"];
  [v5 addAttachment:v8];
}

void __55__VTKAttachmentStoreManager_saveItems_withID_testCase___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VTKTestAttachment])
  {
    v3 = [v4 attachWithThestID:*(a1 + 32)];
    [v3 setLifetime:0];
    [*(a1 + 40) addAttachment:v3];
  }
}

- (void)setItemsDirectory:(id)a3
{
  v4 = a3;
  v5 = [(VTKAttachmentStoreManager *)self fileStoreManager];
  [v5 setItemsDirectory:v4];
}

- (NSString)itemsDirectory
{
  v2 = [(VTKAttachmentStoreManager *)self fileStoreManager];
  v3 = [v2 itemsDirectory];

  return v3;
}

@end