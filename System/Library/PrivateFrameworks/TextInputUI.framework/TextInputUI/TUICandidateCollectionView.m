@interface TUICandidateCollectionView
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation TUICandidateCollectionView

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 _authenticationMessage];
  v9 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v9 _attemptAuthenticationWithMessage:v8];

  v10.receiver = self;
  v10.super_class = TUICandidateCollectionView;
  [(TUICandidateCollectionView *)&v10 touchesEnded:v7 withEvent:v6];
}

@end