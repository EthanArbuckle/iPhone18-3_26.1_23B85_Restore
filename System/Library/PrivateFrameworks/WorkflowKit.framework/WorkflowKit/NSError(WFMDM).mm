@interface NSError(WFMDM)
+ (id)sharingMixedMDMContentErrorWithActionName:()WFMDM;
@end

@implementation NSError(WFMDM)

+ (id)sharingMixedMDMContentErrorWithActionName:()WFMDM
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = WFLocalizedString(@"Sharing content that contains both managed and unmanaged data is not allowed.");
  v7 = [v5 initWithObjectsAndKeys:{v6, *MEMORY[0x1E696A578], 0}];

  if (v4)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"Couldn’t Run “%@”");
    v10 = [v8 localizedStringWithFormat:v9, v4, 0];

    [v7 setObject:v10 forKey:*MEMORY[0x1E696A588]];
  }

  v11 = [a1 errorWithDomain:@"WFActionErrorDomain" code:8 userInfo:v7];

  return v11;
}

@end