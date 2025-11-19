@interface SASPresentationDecision
+ (int64_t)activationPresentationForPresentationIdentifiers:(id)a3;
@end

@implementation SASPresentationDecision

+ (int64_t)activationPresentationForPresentationIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[SASPresentationDecision activationPresentationForPresentationIdentifiers:]";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation SASPresentationDecision deciding between: %@", &v15, 0x16u);
  }

  if ([v3 count] == 1)
  {
    goto LABEL_4;
  }

  v7 = 3;
  v8 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:3];
  v9 = [v3 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v7 = 2;
    v10 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:2];
    v11 = [v3 containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v14 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        [(SASPresentationDecision *)v14 activationPresentationForPresentationIdentifiers:v3];
      }

LABEL_4:
      v6 = [v3 firstObject];
      v7 = [v6 siriPresentationIdentifier];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
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