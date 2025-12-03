@interface _STPeerProviderContext
+ (const)_stringForType:(unint64_t)type;
- (_STPeerProviderContext)initWithConfiguration:(id)configuration;
- (_STPeerProviderContext)initWithIdentifier:(id)identifier;
- (id)description;
@end

@implementation _STPeerProviderContext

+ (const)_stringForType:(unint64_t)type
{
  v3 = "Invalid";
  if (type == 2)
  {
    v3 = "_STPeerProviderContextTypeSpeechTranslatorClientSecondary";
  }

  if (type == 1)
  {
    return "_STPeerProviderContextTypeSpeechTranslatorClientPrimary";
  }

  else
  {
    return v3;
  }
}

- (_STPeerProviderContext)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = _STPeerProviderContext;
  v5 = [(_STPeerProviderContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_STPeerProviderContext *)v5 setType:1];
    [(_STPeerProviderContext *)v6 setConfiguration:configurationCopy];
    v7 = v6;
  }

  else
  {
    v8 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_STPeerProviderContext *)configurationCopy initWithConfiguration:v8];
    }
  }

  return v6;
}

- (_STPeerProviderContext)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = _STPeerProviderContext;
  v5 = [(_STPeerProviderContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_STPeerProviderContext *)v5 setType:2];
    [(_STPeerProviderContext *)v6 setIdentifier:identifierCopy];
    v7 = v6;
  }

  else
  {
    v8 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_STPeerProviderContext *)identifierCopy initWithIdentifier:v8];
    }
  }

  return v6;
}

- (id)description
{
  type = [(_STPeerProviderContext *)self type];
  if (type == 2)
  {
    identifier = [(_STPeerProviderContext *)self identifier];
    goto LABEL_5;
  }

  if (type == 1)
  {
    identifier = [(_STPeerProviderContext *)self configuration];
LABEL_5:
    v5 = identifier;
    v6 = [identifier description];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = _STPeerProviderContext;
  v8 = [(_STPeerProviderContext *)&v12 description];
  v9 = [objc_opt_class() _descriptionForType:{-[_STPeerProviderContext type](self, "type")}];
  v10 = [v7 stringWithFormat:@"{ %@ type: %@ context: %@ }", v8, v9, v6];

  return v10;
}

- (void)initWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Failed to super init _STPeerProviderContext with configuration: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Failed to super init _STPeerProviderContext with identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end