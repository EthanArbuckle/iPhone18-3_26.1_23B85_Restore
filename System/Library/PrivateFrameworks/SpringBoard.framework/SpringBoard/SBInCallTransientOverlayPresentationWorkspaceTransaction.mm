@interface SBInCallTransientOverlayPresentationWorkspaceTransaction
- (SBInCallTransientOverlayPresentationWorkspaceTransaction)initWithTransitionRequest:(id)request sourcePresentationSession:(id)session analyticsSource:(id)source;
- (void)_begin;
- (void)_performInCallPresentationWithCompletion:(id)completion;
@end

@implementation SBInCallTransientOverlayPresentationWorkspaceTransaction

- (SBInCallTransientOverlayPresentationWorkspaceTransaction)initWithTransitionRequest:(id)request sourcePresentationSession:(id)session analyticsSource:(id)source
{
  sessionCopy = session;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = SBInCallTransientOverlayPresentationWorkspaceTransaction;
  v11 = [(SBMainWorkspaceTransaction *)&v15 initWithTransitionRequest:request];
  if (v11)
  {
    v12 = [sourceCopy copy];
    analyticsSource = v11->_analyticsSource;
    v11->_analyticsSource = v12;

    objc_storeStrong(&v11->_sourcePresentationSession, session);
  }

  return v11;
}

- (void)_begin
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBInCallTransientOverlayPresentationWorkspaceTransaction.m" lineNumber:38 description:@"Source presentation session required."];
}

void __66__SBInCallTransientOverlayPresentationWorkspaceTransaction__begin__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBInCallTransientOverlayPresentationWorkspaceTransaction__begin__block_invoke_2;
  v5[3] = &unk_2783ACA48;
  v6 = v2;
  v3 = v2;
  SBLayoutRoleEnumerateValidRoles(v5);
  v4 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v3 setActivatingEntity:v4];

  [v3 setAnimationDisabled:1];
}

void __66__SBInCallTransientOverlayPresentationWorkspaceTransaction__begin__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v3 setEntity:v4 forLayoutRole:a2];
}

uint64_t __66__SBInCallTransientOverlayPresentationWorkspaceTransaction__begin__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  v5 = *(a1 + 32);
  if (v2)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__SBInCallTransientOverlayPresentationWorkspaceTransaction__begin__block_invoke_4;
    v7[3] = &unk_2783A9398;
    v7[4] = v5;
    [v5 _performInCallPresentationWithCompletion:v7];
  }

  else
  {
    [v5 removeMilestone:@"_SBInCallTransientOverlayPresentationWorkspaceTransactionMilestonePresentation"];
  }

  return [*(a1 + 32) removeMilestone:@"_SBInCallTransientOverlayPresentationWorkspaceTransactionMilestoneToAppsTransaction"];
}

uint64_t __66__SBInCallTransientOverlayPresentationWorkspaceTransaction__begin__block_invoke_5(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) failWithReason:@"PreparationFailure"];
  }

  v3 = *(a1 + 32);

  return [v3 removeMilestone:@"_SBInCallTransientOverlayPresentationWorkspaceTransactionMilestonePresentation"];
}

- (void)_performInCallPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];
  sourcePresentationSession = self->_sourcePresentationSession;
  transientOverlayContext = [transitionRequest transientOverlayContext];
  isAnimated = [transientOverlayContext isAnimated];
  analyticsSource = self->_analyticsSource;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__SBInCallTransientOverlayPresentationWorkspaceTransaction__performInCallPresentationWithCompletion___block_invoke;
  v13[3] = &unk_2783B8118;
  selfCopy = self;
  v16 = completionCopy;
  v14 = workspace;
  v11 = completionCopy;
  v12 = workspace;
  [(SBInCallPresentationSession *)sourcePresentationSession _prepareForTransientOverlayPresentationTransactionWithAnimation:isAnimated analyticsSource:analyticsSource completion:v13];
}

void __101__SBInCallTransientOverlayPresentationWorkspaceTransaction__performInCallPresentationWithCompletion___block_invoke(id *a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = [a3 requestBuilder];
    v5 = [a1[4] createRequestWithOptions:0];
    (v4)[2](v4, v5);
    v6 = [a1[4] transactionForTransitionRequest:v5];
    v7 = [v6 completionBlock];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __101__SBInCallTransientOverlayPresentationWorkspaceTransaction__performInCallPresentationWithCompletion___block_invoke_2;
    v13 = &unk_2783B80F0;
    v14 = v7;
    v15 = a1[6];
    v8 = v7;
    [v6 setCompletionBlock:&v10];
    [a1[5] addChildTransaction:v6 withSchedulingPolicy:{0, v10, v11, v12, v13}];
  }

  else
  {
    v9 = *(a1[6] + 2);

    v9();
  }
}

uint64_t __101__SBInCallTransientOverlayPresentationWorkspaceTransaction__performInCallPresentationWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end