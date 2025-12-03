@interface NSPredicate(TUManagedConversationLinkDescriptor)
+ (id)tu_predicateForConversationLinkDescriptorsIsDeleted:()TUManagedConversationLinkDescriptor;
+ (id)tu_predicateForConversationLinkDescriptorsWithInvitedHandle:()TUManagedConversationLinkDescriptor;
+ (id)tu_predicateForConversationLinkDescriptorsWithOriginatorHandle:()TUManagedConversationLinkDescriptor;
@end

@implementation NSPredicate(TUManagedConversationLinkDescriptor)

+ (id)tu_predicateForConversationLinkDescriptorsIsDeleted:()TUManagedConversationLinkDescriptor
{
  if (a3)
  {
    v3 = @"deletionDate != NULL";
  }

  else
  {
    v3 = @"deletionDate == NULL";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:v3];

  return v4;
}

+ (id)tu_predicateForConversationLinkDescriptorsWithInvitedHandle:()TUManagedConversationLinkDescriptor
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  value = [v4 value];
  v6 = [self tu_predicateForConversationLinkDescriptorsWithInvitedHandleValue:value];

  normalizedValue = [v4 normalizedValue];

  if (normalizedValue)
  {
    normalizedValue2 = [v4 normalizedValue];
    v9 = [self tu_predicateForConversationLinkDescriptorsWithInvitedHandleNormalizedValue:normalizedValue2];
    v18[0] = v9;
    v18[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v10];

    v6 = v11;
  }

  v12 = [self tu_predicateForConversationLinkDescriptorsWithInvitedHandleType:{objc_msgSend(v4, "type")}];
  v17[0] = v12;
  v17[1] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)tu_predicateForConversationLinkDescriptorsWithOriginatorHandle:()TUManagedConversationLinkDescriptor
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  value = [v4 value];
  v6 = [self tu_predicateForConversationLinkDescriptorsWithOriginatorHandleValue:value];

  normalizedValue = [v4 normalizedValue];

  if (normalizedValue)
  {
    normalizedValue2 = [v4 normalizedValue];
    v9 = [self tu_predicateForConversationLinkDescriptorsWithOriginatorHandleNormalizedValue:normalizedValue2];
    v18[0] = v9;
    v18[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v10];

    v6 = v11;
  }

  v12 = [self tu_predicateForConversationLinkDescriptorsWithOriginatorHandleType:{objc_msgSend(v4, "type")}];
  v17[0] = v12;
  v17[1] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end