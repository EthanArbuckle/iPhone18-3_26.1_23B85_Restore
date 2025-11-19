@interface PKPassDeleteAnimationController
+ (void)performPassbookDeleteWithView:(id)a3 inSuperview:(id)a4 completion:(id)a5;
- (PKPassDeleteAnimationController)initWithPassView:(id)a3 groupView:(id)a4;
- (PKPassDeleteAnimationControllerDelegate)delegate;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_registerForEnterBackgroundNotification;
- (void)_startAnimationWithCompletion:(id)a3;
- (void)_unregisterForEnterBackgroundNotification;
- (void)dealloc;
- (void)finished:(BOOL)a3;
- (void)forceDeleteAnimation;
- (void)showInViewController:(id)a3 sourceView:(id)a4;
@end

@implementation PKPassDeleteAnimationController

+ (void)performPassbookDeleteWithView:(id)a3 inSuperview:(id)a4 completion:(id)a5
{
  v7 = a3;
  v84 = a5;
  v8 = a4;
  [v7 frame];
  v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
  [v13 setClipsToBounds:1];
  [v8 addSubview:v13];

  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v86 = v7;
  [v7 setFrame:?];
  [v13 addSubview:v7];
  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = 1.0 / v19;

  v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v15, v20}];
  v22 = [MEMORY[0x1E69DC888] redColor];
  [v21 setBackgroundColor:v22];

  [v21 setAlpha:0.83];
  v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v17, v15, v20}];
  v24 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.07 blue:0.07 alpha:1.0];
  [v23 setBackgroundColor:v24];

  [v23 setAlpha:0.83];
  [v13 addSubview:v21];
  [v13 addSubview:v23];
  v25 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v26) = 1046809695;
  LODWORD(v27) = 990250344;
  LODWORD(v28) = 1057860847;
  LODWORD(v29) = 1064564184;
  v85 = [v25 initWithControlPoints:v26 :v27 :v28 :v29];
  v30 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v30];
  [v30 setMass:2.0];
  [v30 setStiffness:300.0];
  [v30 setDamping:400.0];
  v83 = v30;
  [v30 setTimingFunction:v85];
  v31 = [v13 layer];
  v32 = [v31 valueForKey:@"bounds"];
  [v30 setFromValue:v32];

  v33 = *MEMORY[0x1E69797D8];
  v78 = *MEMORY[0x1E69797D8];
  [v30 setFillMode:*MEMORY[0x1E69797D8]];
  [v30 setDuration:0.91];
  LODWORD(v34) = 1068708659;
  [v30 setSpeed:v34];
  v79 = v13;
  v35 = [v13 layer];
  [v35 addAnimation:v30 forKey:@"bounds"];

  v36 = [v13 layer];
  [v36 setBounds:{0.0, 0.0, v15, 0.5}];

  v37 = v15 * 0.5;
  v38 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v38];
  [v38 setMass:2.0];
  [v38 setStiffness:300.0];
  [v38 setDamping:400.0];
  [v38 setTimingFunction:v85];
  [v38 setFillMode:v33];
  [v38 setDuration:0.91];
  LODWORD(v39) = 1068708659;
  [v38 setSpeed:v39];
  v40 = [v38 copy];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v40];
  v41 = [v7 valueForKey:@"position"];
  v82 = v40;
  [v40 setFromValue:v41];

  v42 = [v7 layer];
  [v42 addAnimation:v40 forKey:@"position"];

  v43 = [v7 layer];
  [v43 setPosition:{v37, 0.0}];

  v44 = [v38 copy];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v44];
  v45 = [v21 valueForKey:@"position"];
  v81 = v44;
  [v44 setFromValue:v45];

  v46 = [v21 layer];
  [v46 addAnimation:v44 forKey:@"position"];

  v47 = [v38 copy];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v47];
  v48 = v23;
  v49 = [v23 valueForKey:@"position"];
  v80 = v47;
  [v47 setFromValue:v49];

  v50 = [v23 layer];
  [v50 addAnimation:v47 forKey:@"position"];

  v51 = [v21 layer];
  [v51 setPosition:{v37, 0.0}];

  v52 = [v23 layer];
  [v52 setPosition:{v37, 0.0}];

  v53 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v54) = 1036831949;
  LODWORD(v55) = 0.25;
  LODWORD(v56) = 0.25;
  LODWORD(v57) = 1.0;
  v58 = [v53 initWithControlPoints:v55 :v54 :v56 :v57];

  v59 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v59];
  [v59 setDuration:0.41];
  v60 = [v21 layer];
  v61 = [v60 valueForKey:@"opacity"];
  [v59 setFromValue:v61];

  [v59 setFillMode:v78];
  [v59 setBeginTime:CACurrentMediaTime() + 0.5];
  v77 = v58;
  [v59 setTimingFunction:v58];
  v62 = [v21 layer];
  [v62 addAnimation:v59 forKey:@"opacity"];

  v63 = [v48 layer];
  [v63 addAnimation:v59 forKey:@"opacity"];

  v64 = [v21 layer];
  [v64 setOpacity:0.0];

  v65 = [v48 layer];
  [v65 setOpacity:0.0];

  v66 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [MEMORY[0x1E69DD250] _setAnimationAttributes:v66];
  [v66 setDuration:0.115];
  v67 = [v86 layer];
  v68 = [v67 valueForKey:@"opacity"];
  [v66 setFromValue:v68];

  [v66 setFillMode:v78];
  [v66 setBeginTime:CACurrentMediaTime() + 0.28];
  [v66 setTimingFunction:v58];
  v69 = [v86 layer];
  [v69 addAnimation:v66 forKey:@"opacity"];

  v70 = [v86 layer];
  [v70 setOpacity:0.0];

  v71 = dispatch_time(0, 740000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPassDeleteAnimationController_performPassbookDeleteWithView_inSuperview_completion___block_invoke;
  block[3] = &unk_1E80135E0;
  v88 = v86;
  v89 = v21;
  v90 = v48;
  v91 = v79;
  v92 = v84;
  v72 = v84;
  v73 = v79;
  v74 = v90;
  v75 = v21;
  v76 = v86;
  dispatch_after(v71, MEMORY[0x1E69E96A0], block);
}

uint64_t __88__PKPassDeleteAnimationController_performPassbookDeleteWithView_inSuperview_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (PKPassDeleteAnimationController)initWithPassView:(id)a3 groupView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPassDeleteAnimationController;
  v9 = [(PKPassDeleteAnimationController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passView, a3);
    objc_storeStrong(&v10->_groupView, a4);
  }

  return v10;
}

- (void)dealloc
{
  [(PKPassDeleteAnimationController *)self _unregisterForEnterBackgroundNotification];
  v3.receiver = self;
  v3.super_class = PKPassDeleteAnimationController;
  [(PKPassDeleteAnimationController *)&v3 dealloc];
}

- (void)showInViewController:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPassView *)self->_passView pass];
  v32 = v7;
  if ([v8 passType] != 1)
  {
    v12 = v6;
    v11 = PKLocalizedString(&cfstr_RemoveSheetTit.isa);
    v13 = PKLocalizedString(&cfstr_RemoveSheetCan.isa);
    v14 = PKLocalizedString(&cfstr_RemoveSheetCon.isa);
    goto LABEL_26;
  }

  v9 = [v8 paymentPass];
  if (![v9 isAccessPass])
  {
    if ([v9 supportsBarcodePayment])
    {
      v15 = PKLocalizedAquamanString(&cfstr_DeleteAccountS.isa);
LABEL_14:
      v10 = v15;
      goto LABEL_24;
    }

    if (![v9 isIdentityPass])
    {
      v15 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_1.isa);
      goto LABEL_14;
    }

    v16 = [v9 identityType];
    v10 = 0;
    if (v16 > 2)
    {
      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v18 = [v8 localizedDescription];
          v19 = @"DELETE_ID_CARD_ADD_AGAIN_LATER_WITH_ISSUERS_APP_SHEET_MESSAGE";
          goto LABEL_22;
        }

        if (v16 != 5)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        v17 = @"DELETE_DL_SHEET_MESSAGE";
      }

      else
      {
        if (v16 != 2)
        {
LABEL_24:
          v31 = [v9 localizedDescription];
          v11 = PKStringWithValidatedFormat();

          goto LABEL_25;
        }

        v17 = @"DELETE_STATE_ID_SHEET_MESSAGE";
      }

      v18 = PKDeviceSpecificLocalizedStringKeyForKey(v17, 0);
      v10 = PKLocalizedIdentityString(v18);
LABEL_23:

      goto LABEL_24;
    }

    v18 = [v8 localizedDescription];
    v19 = @"DELETE_ID_CARD_SHEET_MESSAGE";
LABEL_22:
    v20 = PKDeviceSpecificLocalizedStringKeyForKey(v19, 0);
    v10 = PKLocalizedIdentityString(v20, &stru_1F3BD6370.isa, v18, v18);

    goto LABEL_23;
  }

  v10 = [v9 localizedDescription];
  v11 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_0.isa, &stru_1F3BD5BF0.isa, v10);
LABEL_25:
  v12 = v6;

  v13 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_2.isa);
  v14 = PKLocalizedPaymentString(&cfstr_DeleteCardShee.isa);
LABEL_26:
  v21 = v14;
  v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:0 preferredStyle:{0, v31}];
  alertController = self->_alertController;
  self->_alertController = v22;

  objc_initWeak(&location, self);
  v24 = self->_alertController;
  v25 = MEMORY[0x1E69DC648];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __67__PKPassDeleteAnimationController_showInViewController_sourceView___block_invoke;
  v35[3] = &unk_1E8012CC0;
  objc_copyWeak(&v36, &location);
  v26 = [v25 actionWithTitle:v13 style:1 handler:v35];
  [(UIAlertController *)v24 addAction:v26];

  v27 = self->_alertController;
  v28 = MEMORY[0x1E69DC648];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __67__PKPassDeleteAnimationController_showInViewController_sourceView___block_invoke_2;
  v33[3] = &unk_1E8012CC0;
  objc_copyWeak(&v34, &location);
  v29 = [v28 actionWithTitle:v21 style:2 handler:v33];
  [(UIAlertController *)v27 addAction:v29];

  PKAccessibilityIDAlertSet(self->_alertController, *MEMORY[0x1E69B9958]);
  if (v32)
  {
    v30 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [v30 setSourceView:v32];
  }

  [v12 presentViewController:self->_alertController animated:1 completion:0];
  [(PKPassDeleteAnimationController *)self _registerForEnterBackgroundNotification];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __67__PKPassDeleteAnimationController_showInViewController_sourceView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _unregisterForEnterBackgroundNotification];
    [v2 finished:0];
    WeakRetained = v2;
  }
}

void __67__PKPassDeleteAnimationController_showInViewController_sourceView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _unregisterForEnterBackgroundNotification];
    v4 = [v3[4] beginSuppressingPageControl];
    v5 = dispatch_time(0, 710000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PKPassDeleteAnimationController_showInViewController_sourceView___block_invoke_3;
    v7[3] = &unk_1E80111D0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v4;
    v6 = v4;
    dispatch_after(v5, MEMORY[0x1E69E96A0], v7);

    objc_destroyWeak(&v9);
  }
}

void __67__PKPassDeleteAnimationController_showInViewController_sourceView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _startAnimationWithCompletion:v3];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = 0;
    (*(v3 + 16))(v3);
  }

  WeakRetained = v4;
LABEL_6:
}

- (void)forceDeleteAnimation
{
  v3 = [(PKPassGroupView *)self->_groupView beginSuppressingPageControl];
  [(PKPassDeleteAnimationController *)self _startAnimationWithCompletion:v3];
}

- (void)finished:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained deleteAnimationController:self didComplete:v3];
  }
}

- (void)_startAnimationWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained deleteAnimationControllerWillBeginDeleteAnimation:self];
  }

  [(PKPassView *)self->_passView sizeToFit];
  v6 = [(PKPassView *)self->_passView snapshotViewOfVisibleFaceAfterScreenUpdates:0];
  v7 = [(PKPassView *)self->_passView superview];
  [(PKPassView *)self->_passView removeFromSuperview];
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PKPassDeleteAnimationController__startAnimationWithCompletion___block_invoke;
  v10[3] = &unk_1E80158C0;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 performPassbookDeleteWithView:v6 inSuperview:v7 completion:v10];
}

uint64_t __65__PKPassDeleteAnimationController__startAnimationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) finished:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_registerForEnterBackgroundNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
}

- (void)_unregisterForEnterBackgroundNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
}

- (void)_applicationDidEnterBackground:(id)a3
{
  [(PKPassDeleteAnimationController *)self _unregisterForEnterBackgroundNotification];
  [(PKPassDeleteAnimationController *)self finished:0];
  alertController = self->_alertController;

  [(UIAlertController *)alertController dismissViewControllerAnimated:0 completion:0];
}

- (PKPassDeleteAnimationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end