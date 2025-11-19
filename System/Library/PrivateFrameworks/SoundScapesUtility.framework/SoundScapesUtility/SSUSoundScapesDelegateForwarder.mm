@interface SSUSoundScapesDelegateForwarder
@end

@implementation SSUSoundScapesDelegateForwarder

uint64_t __61___SSUSoundScapesDelegateForwarder_mediaPickerConfirmChoices__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 mediaPickerDidSelectPlaybackArchive:*(*(a1 + 32) + 8) withError:*(*(a1 + 32) + 16)];

  v3 = *(a1 + 32);

  return [v3 cleanup];
}

uint64_t __50___SSUSoundScapesDelegateForwarder_requestDismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 mediaPickerCancelled];

  v3 = *(a1 + 32);

  return [v3 cleanup];
}

void __43___SSUSoundScapesDelegateForwarder_cleanup__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
  [v1 invalidate];
}

@end