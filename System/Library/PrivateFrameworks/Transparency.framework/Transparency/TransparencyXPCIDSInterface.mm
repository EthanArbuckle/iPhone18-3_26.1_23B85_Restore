@interface TransparencyXPCIDSInterface
+ (id)interface;
@end

@implementation TransparencyXPCIDSInterface

+ (id)interface
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5C0E410];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_setupKTSession_complete_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_setupKTSession_complete_ argumentIndex:0 ofReply:1];

  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses forSelector:sel_setupKTSession_complete_ argumentIndex:1 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_listKTSession_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_getKTSessionByHandle_complete_ argumentIndex:0 ofReply:1];

  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v12 forSelector:sel_getKTSessionByID_complete_ argumentIndex:0 ofReply:1];

  v13 = *MEMORY[0x1E69E9840];

  return v2;
}

@end