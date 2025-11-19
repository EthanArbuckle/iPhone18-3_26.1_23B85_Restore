@interface NCNotificationThreadsMuteAssertion
+ (id)threadsMuteAssertionWithMutedThreadIDs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithMutedThreadIDs:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)activeMuteAssertionLevelForThreadIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation NCNotificationThreadsMuteAssertion

+ (id)threadsMuteAssertionWithMutedThreadIDs:(id)a3
{
  v3 = a3;
  v4 = [[NCNotificationThreadsMuteAssertion alloc] _initWithMutedThreadIDs:v3];

  return v4;
}

- (id)_initWithMutedThreadIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationThreadsMuteAssertion;
  v6 = [(NCNotificationThreadsMuteAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutedThreadIDs, a3);
  }

  return v7;
}

- (unint64_t)activeMuteAssertionLevelForThreadIdentifier:(id)a3
{
  if (a3)
  {
    return [(NSSet *)self->_mutedThreadIDs containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 31;
  mutedThreadIDs = self->_mutedThreadIDs;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NCNotificationThreadsMuteAssertion_hash__block_invoke;
  v5[3] = &unk_279E0DA30;
  v5[4] = &v7;
  v5[5] = v6;
  [(NSSet *)mutedThreadIDs enumerateObjectsUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __42__NCNotificationThreadsMuteAssertion_hash__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) = result + v4 * v3;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = v4) != 0)
  {
    v6 = v5;
    v7 = NCIsEqualToSet(self->_mutedThreadIDs, v5[1]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationThreadsMuteAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__NCNotificationThreadsMuteAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

- (id)succinctDescription
{
  v2 = [(NCNotificationThreadsMuteAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end