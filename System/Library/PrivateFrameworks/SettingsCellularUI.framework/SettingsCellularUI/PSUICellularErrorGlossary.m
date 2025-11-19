@interface PSUICellularErrorGlossary
+ (id)sharedInstance;
- (PSUICellularErrorGlossary)init;
- (id)initPrivate;
- (id)messageForError:(id)a3;
@end

@implementation PSUICellularErrorGlossary

+ (id)sharedInstance
{
  if (qword_28156A750 != -1)
  {
    dispatch_once(&qword_28156A750, &__block_literal_global_11);
  }

  v3 = _MergedGlobals_68;

  return v3;
}

uint64_t __43__PSUICellularErrorGlossary_sharedInstance__block_invoke()
{
  _MergedGlobals_68 = [[PSUICellularErrorGlossary alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = PSUICellularErrorGlossary;
  return [(PSUICellularErrorGlossary *)&v3 init];
}

- (PSUICellularErrorGlossary)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSUICellularErrorGlossary *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICellularErrorGlossary init]";
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)messageForError:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"GENERIC_CELLULAR_PLAN_ERROR_TITLE" value:&stru_287733598 table:@"Cellular"];
  [v4 setTitle:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"GENERIC_CELLULAR_PLAN_ERROR_MESSAGE" value:&stru_287733598 table:@"Cellular"];
  [v4 setMessage:v8];

  v9 = [v3 domain];
  LODWORD(v8) = [v9 isEqualToString:*MEMORY[0x277CF9680]];

  if (v8)
  {
    v10 = [v3 code];
    if (v10 == 2)
    {
      v11 = @"INVALID_ACTIVATION_CODE_MESSAGE";
      v12 = @"INVALID_ACTIVATION_CODE_TITLE";
    }

    else
    {
      if (v10 != 13)
      {
        goto LABEL_7;
      }

      v11 = @"CELLULAR_PLAN_BEING_CONFIGURED_MESSAGE";
      v12 = @"CELLULAR_PLAN_BEING_CONFIGURED_TITLE";
    }

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:v12 value:&stru_287733598 table:@"Cellular"];
    [v4 setTitle:v14];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v11 value:&stru_287733598 table:@"Cellular"];
    [v4 setMessage:v16];
  }

LABEL_7:

  return v4;
}

@end