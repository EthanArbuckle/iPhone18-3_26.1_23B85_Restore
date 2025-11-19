@interface UIAlertController
@end

@implementation UIAlertController

void __61__UIAlertController_AlertPresenter__actionForButton_inAlert___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained textFields];
  v3 = [v2 if_map:&__block_literal_global_809];
  [a1[4] setTextFieldResults:v3];

  v4 = [a1[5] handler];

  if (v4)
  {
    v5 = [a1[5] handler];
    v5[2](v5, 0);
  }
}

__CFString *__61__UIAlertController_AlertPresenter__actionForButton_inAlert___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_2883D0B68;
  }

  v5 = v4;

  return v4;
}

id __57__UIAlertController_AlertPresenter__setButtons_forAlert___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 actionForButton:v5 inAlert:v4];
  LODWORD(v4) = [v5 isPreferred];

  if (v4)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }

  return v6;
}

@end