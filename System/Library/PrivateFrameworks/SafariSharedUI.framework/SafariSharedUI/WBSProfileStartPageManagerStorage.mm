@interface WBSProfileStartPageManagerStorage
- (void)dealloc;
- (void)startPageSectionDescriptors;
@end

@implementation WBSProfileStartPageManagerStorage

- (void)dealloc
{
  [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
  v3.receiver = self;
  v3.super_class = WBSProfileStartPageManagerStorage;
  [(WBSProfileStartPageManagerStorage *)&v3 dealloc];
}

- (void)startPageSectionDescriptors
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to decode section data: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)setStartPageSectionDescriptors:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to serialize section data: %{public}@", v7, v8, v9, v10, 2u);
}

@end