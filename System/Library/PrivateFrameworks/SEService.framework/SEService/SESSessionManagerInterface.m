@interface SESSessionManagerInterface
+ (id)interface;
@end

@implementation SESSessionManagerInterface

+ (id)interface
{
  if (interface_onceToken != -1)
  {
    +[SESSessionManagerInterface interface];
  }

  v3 = interface_interface;

  return v3;
}

void __39__SESSessionManagerInterface_interface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F476C378];
  v1 = interface_interface;
  interface_interface = v0;

  v2 = interface_interface;
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4766C68];
  [v2 setInterface:v3 forSelector:sel_startSESACWGSession_completion_ argumentIndex:0 ofReply:0];

  v4 = interface_interface;
  v5 = +[SESACWGSessionInterface interface];
  [v4 setInterface:v5 forSelector:sel_startSESACWGSession_completion_ argumentIndex:0 ofReply:1];

  v6 = interface_interface;
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4767158];
  [v6 setInterface:v7 forSelector:sel_startSESDCKSession_completion_ argumentIndex:0 ofReply:0];

  v8 = interface_interface;
  v9 = +[SESDCKSessionInterface interface];
  [v8 setInterface:v9 forSelector:sel_startSESDCKSession_completion_ argumentIndex:0 ofReply:1];

  v10 = interface_interface;
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4767EF0];
  [v10 setInterface:v11 forSelector:sel_startSESRKESession_options_completion_ argumentIndex:0 ofReply:0];

  v12 = interface_interface;
  v13 = +[SESRKESessionInterface interface];
  [v12 setInterface:v13 forSelector:sel_startSESRKESession_options_completion_ argumentIndex:0 ofReply:1];

  v14 = interface_interface;
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v15 setWithObjects:{v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [v14 setClasses:v22 forSelector:sel_getVehicleReports_ argumentIndex:0 ofReply:1];

  v23 = interface_interface;
  v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4763A18];
  [v23 setInterface:v24 forSelector:sel_startSESAssertion_withKeyIdentifier_withAppletIdentifier_withOptions_completion_ argumentIndex:0 ofReply:0];

  v25 = interface_interface;
  v26 = +[SESAssertionInterface interface];
  [v25 setInterface:v26 forSelector:sel_startSESAssertion_withKeyIdentifier_withAppletIdentifier_withOptions_completion_ argumentIndex:0 ofReply:1];
}

@end