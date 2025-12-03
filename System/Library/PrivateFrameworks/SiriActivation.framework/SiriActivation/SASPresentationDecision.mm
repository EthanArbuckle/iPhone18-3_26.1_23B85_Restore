@interface SASPresentationDecision
+ (int64_t)activationPresentationForPresentationIdentifiers:(id)identifiers;
@end

@implementation SASPresentationDecision

+ (int64_t)activationPresentationForPresentationIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[SASPresentationDecision activationPresentationForPresentationIdentifiers:]";
    v17 = 2112;
    v18 = identifiersCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation SASPresentationDecision deciding between: %@", &v15, 0x16u);
  }

  if ([identifiersCopy count] == 1)
  {
    goto LABEL_4;
  }

  siriPresentationIdentifier = 3;
  v8 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:3];
  v9 = [identifiersCopy containsObject:v8];

  if ((v9 & 1) == 0)
  {
    siriPresentationIdentifier = 2;
    v10 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:2];
    v11 = [identifiersCopy containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v14 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        [(SASPresentationDecision *)v14 activationPresentationForPresentationIdentifiers:identifiersCopy];
      }

LABEL_4:
      firstObject = [identifiersCopy firstObject];
      siriPresentationIdentifier = [firstObject siriPresentationIdentifier];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return siriPresentationIdentifier;
}

+ (void)activationPresentationForPresentationIdentifiers:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 firstObject];
  v6 = 136315394;
  v7 = "+[SASPresentationDecision activationPresentationForPresentationIdentifiers:]";
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1C8137000, v3, OS_LOG_TYPE_ERROR, "%s ERROR: Multiple connected presentations, but none of them have precedence. Taking the first object, %@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end