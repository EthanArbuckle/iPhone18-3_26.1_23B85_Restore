@interface SUICKPEntryPoint
- (SUICKPEntryPoint)init;
- (SUICKPEntryPoint)initWithCATExecutor:(id)executor;
- (void)mutateResponseSections:(id)sections completion:(id)completion;
- (void)presentation:(id)presentation didApplyCardSectionViewSource:(id)source toCardViewController:(id)controller;
- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
- (void)unregisterCardViewController:(id)controller;
@end

@implementation SUICKPEntryPoint

- (SUICKPEntryPoint)init
{
  v8.receiver = self;
  v8.super_class = SUICKPEntryPoint;
  v2 = [(SUICKPEntryPoint *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUICKPCardViewControllerProvider);
    cardViewControllerProvider = v2->_cardViewControllerProvider;
    v2->_cardViewControllerProvider = v3;

    v5 = objc_alloc_init(SUICKPCATExecutor);
    catExecutor = v2->_catExecutor;
    v2->_catExecutor = v5;

    +[(CRKCardSectionViewController *)SUICKPActivityIndicatorCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPAudioPlaybackCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPInteractiveCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPMapCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPMediaInfoCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPMediaPunchoutCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPWatchListCardSectionViewController];
  }

  return v2;
}

- (SUICKPEntryPoint)initWithCATExecutor:(id)executor
{
  executorCopy = executor;
  v10.receiver = self;
  v10.super_class = SUICKPEntryPoint;
  v6 = [(SUICKPEntryPoint *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SUICKPCardViewControllerProvider);
    cardViewControllerProvider = v6->_cardViewControllerProvider;
    v6->_cardViewControllerProvider = v7;

    objc_storeStrong(&v6->_catExecutor, executor);
    +[(CRKCardSectionViewController *)SUICKPActivityIndicatorCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPAudioPlaybackCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPInteractiveCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPMapCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPMediaInfoCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPMediaPunchoutCardSectionViewController];
    +[(CRKCardSectionViewController *)SUICKPWatchListCardSectionViewController];
  }

  return v6;
}

- (void)unregisterCardViewController:(id)controller
{
  controllerCopy = controller;
  cardViewControllerProvider = self->_cardViewControllerProvider;
  if (objc_opt_respondsToSelector())
  {
    [(SUICKPCardViewControllerProvider *)self->_cardViewControllerProvider unregisterCardViewController:controllerCopy];
  }
}

- (void)presentation:(id)presentation didApplyCardSectionViewSource:(id)source toCardViewController:(id)controller
{
  presentationCopy = presentation;
  sourceCopy = source;
  controllerCopy = controller;
  cardViewControllerProvider = self->_cardViewControllerProvider;
  if (objc_opt_respondsToSelector())
  {
    [(SUICKPCardViewControllerProvider *)self->_cardViewControllerProvider presentation:presentationCopy didApplyCardSectionViewSource:sourceCopy toCardViewController:controllerCopy];
  }
}

- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SUICKPEntryPoint_requestCardSectionViewProviderForCard_delegate_reply___block_invoke;
  v10[3] = &unk_279B8EF68;
  v11 = replyCopy;
  v9 = replyCopy;
  [(SUICKPEntryPoint *)self requestIdentifiedCardSectionViewProviderForCard:card delegate:delegate reply:v10];
}

uint64_t __73__SUICKPEntryPoint_requestCardSectionViewProviderForCard_delegate_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  cardCopy = card;
  delegateCopy = delegate;
  replyCopy = reply;
  if (replyCopy)
  {
    resolvedCardSections = [cardCopy resolvedCardSections];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__SUICKPEntryPoint_requestIdentifiedCardSectionViewProviderForCard_delegate_reply___block_invoke;
    v12[3] = &unk_279B8EF90;
    v13 = cardCopy;
    v14 = delegateCopy;
    v15 = replyCopy;
    [(SUICKPEntryPoint *)self mutateResponseSections:resolvedCardSections completion:v12];
  }
}

void __83__SUICKPEntryPoint_requestIdentifiedCardSectionViewProviderForCard_delegate_reply___block_invoke(void *a1)
{
  v2 = [[SUICKPCardSectionViewProvider alloc] initWithCard:a1[4]];
  [(SUICKPCardSectionViewProvider *)v2 setDelegate:a1[5]];
  (*(a1[6] + 16))();
}

- (void)mutateResponseSections:(id)sections completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  completionCopy = completion;
  group = dispatch_group_create();
  queue = dispatch_queue_create("com.apple.siri.cardKit.visualCatExecution", MEMORY[0x277D85CD8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = sectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          backingCardSection = [v12 backingCardSection];
        }

        else
        {
          backingCardSection = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = backingCardSection;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke;
          block[3] = &unk_279B8EFE0;
          v23 = group;
          selfCopy = self;
          v25 = v14;
          dispatch_group_async(v23, queue, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke_21;
  v20[3] = &unk_279B8F008;
  v21 = completionCopy;
  v15 = completionCopy;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], v20);

  v16 = *MEMORY[0x277D85DE8];
}

void __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);
  v3 = [*(a1 + 48) catModel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke_2;
  v4[3] = &unk_279B8EFB8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 responseProtoFromCATModel:v3 completion:v4];
}

void __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 visualResponse];

  if (v6 || !v7)
  {
    v10 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke_2_cold_1(a1, v10, v6);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 visualResponse];
    [v8 setVisualCATOutput:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __54__SUICKPEntryPoint_mutateResponseSections_completion___block_invoke_2_cold_1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 catModel];
  v7 = [v6 catIdentifier];
  v8 = [a3 localizedDescription];
  v10 = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  _os_log_error_impl(&dword_264EDF000, v5, OS_LOG_TYPE_ERROR, "Error loading VisualCAT with id: %@. Failed with error: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end