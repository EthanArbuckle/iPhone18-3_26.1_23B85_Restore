@interface PKAccountPromotionsPresenter
- (PKAccountPromotionsPresenter)initWithRemoteImagePreparer:(id)preparer delegate:(id)delegate;
- (void)configureCell:(id)cell withPromotion:(id)promotion;
- (void)dispatchActionForLink:(id)link linkedApplication:(id)application promotion:(id)promotion;
@end

@implementation PKAccountPromotionsPresenter

- (PKAccountPromotionsPresenter)initWithRemoteImagePreparer:(id)preparer delegate:(id)delegate
{
  preparerCopy = preparer;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKAccountPromotionsPresenter;
  v9 = [(PKAccountPromotionsPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteImagePreparer, preparer);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)configureCell:(id)cell withPromotion:(id)promotion
{
  v23 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  promotionCopy = promotion;
  v8 = promotionCopy;
  v20 = promotionCopy;
  if (cellCopy && promotionCopy)
  {
    v9 = NSSelectorFromString(&cfstr_Configurewithp.isa);
    v10 = [objc_opt_class() instanceMethodSignatureForSelector:v9];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKAccountPromotionsPresenter_configureCell_withPromotion___block_invoke;
    aBlock[3] = &unk_1E801F130;
    objc_copyWeak(&v17, &location);
    v16 = v8;
    v18 = _Block_copy(aBlock);
    [v11 setSelector:v9];
    [v11 setArgument:&v20 atIndex:2];
    [v11 setArgument:&self->_remoteImagePreparer atIndex:3];
    [v11 setArgument:&v18 atIndex:4];
    [v11 invokeWithTarget:cellCopy];
    v14 = 0;
    [v11 getReturnValue:&v14];
    if ((v14 & 1) == 0)
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        programIdentifier = [v20 programIdentifier];
        *buf = 138412290;
        v22 = programIdentifier;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Encountered error configuring account promotion view. Suppressing the view for identifier: %@", buf, 0xCu);
      }
    }

    [cellCopy setNeedsUpdateConfiguration];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    v8 = v20;
  }
}

void __60__PKAccountPromotionsPresenter_configureCell_withPromotion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dispatchActionForLink:v6 linkedApplication:v5 promotion:*(a1 + 32)];
}

- (void)dispatchActionForLink:(id)link linkedApplication:(id)application promotion:(id)promotion
{
  v72[2] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  applicationCopy = application;
  promotionCopy = promotion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    name = [linkCopy name];
    v13 = [linkCopy url];
    v14 = *MEMORY[0x1E69B9E18];
    v15 = name;
    v16 = v15;
    if (v15 == v14)
    {
      v17 = 1;
    }

    else
    {
      if (!v15 || !v14)
      {

        goto LABEL_13;
      }

      v17 = [v15 isEqualToString:v14];
    }

    if (applicationCopy && v17)
    {
      isInstalled = [applicationCopy isInstalled];
      v19 = MEMORY[0x1E69BAB88];
      if (!isInstalled)
      {
        v19 = MEMORY[0x1E69BA898];
      }

      v20 = *v19;
      v21 = *MEMORY[0x1E69BA6F0];
      v22 = *MEMORY[0x1E69BA440];
      v71[0] = *MEMORY[0x1E69BA680];
      v71[1] = v22;
      v72[0] = v21;
      v72[1] = v20;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
      [WeakRetained reportEventIfNecessary:v23];

      [WeakRetained openLinkedApplication:applicationCopy];
      goto LABEL_79;
    }

LABEL_13:
    v24 = *MEMORY[0x1E69B9E20];
    v25 = v16;
    v26 = v25;
    if (v25 == v24)
    {
    }

    else
    {
      if (!v25 || !v24)
      {

        goto LABEL_25;
      }

      v27 = [v25 isEqualToString:v24];

      if (!v27)
      {
LABEL_25:
        v35 = v26;
        v36 = v35;
        if (v16 == v14)
        {
          v38 = MEMORY[0x1E69BA898];
        }

        else
        {
          if (v26 && v14)
          {
            v37 = [v35 isEqualToString:v14];

            if (v37)
            {
              v38 = MEMORY[0x1E69BA898];
LABEL_47:
              v47 = *v38;
              v20 = v47;
              if (v47)
              {
                v48 = *MEMORY[0x1E69BA6F0];
                v49 = *MEMORY[0x1E69BA440];
                v69[0] = *MEMORY[0x1E69BA680];
                v69[1] = v49;
                v70[0] = v48;
                v70[1] = v47;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
                [WeakRetained reportEventIfNecessary:v50];
              }

              v51 = 0;
              goto LABEL_78;
            }
          }

          else
          {
          }

          v43 = *MEMORY[0x1E69B9E10];
          v44 = v36;
          if (v44 != v43)
          {
            v45 = v44;
            if (v26 && v43)
            {
              v46 = [v44 isEqualToString:v43];

              if (v46)
              {
                v38 = MEMORY[0x1E69BABA0];
                goto LABEL_47;
              }
            }

            else
            {
            }

            v51 = 0;
            v20 = 0;
LABEL_78:
            [WeakRetained openURL:v13 sensitive:0 preferInApp:v51];
LABEL_79:

            goto LABEL_80;
          }

          v38 = MEMORY[0x1E69BABA0];
        }

        goto LABEL_47;
      }
    }

    layout = [promotionCopy layout];
    templateIdentifier = [layout templateIdentifier];

    v30 = *MEMORY[0x1E69B9E58];
    v31 = templateIdentifier;
    v32 = v31;
    if (v31 == v30)
    {
      v34 = MEMORY[0x1E69BA398];
    }

    else
    {
      if (v31 && v30)
      {
        v33 = [v31 isEqualToString:v30];

        if (v33)
        {
          v34 = MEMORY[0x1E69BA398];
          goto LABEL_74;
        }
      }

      else
      {
      }

      v39 = *MEMORY[0x1E69B9E38];
      v40 = v32;
      if (v40 == v39)
      {
        v34 = MEMORY[0x1E69BA380];
      }

      else
      {
        v41 = v40;
        if (v32 && v39)
        {
          v42 = [v40 isEqualToString:v39];

          if (v42)
          {
            v34 = MEMORY[0x1E69BA380];
            goto LABEL_74;
          }
        }

        else
        {
        }

        v52 = *MEMORY[0x1E69B9E50];
        v53 = v41;
        if (v53 == v52)
        {
          v34 = MEMORY[0x1E69BA3A0];
        }

        else
        {
          v54 = v53;
          if (v32 && v52)
          {
            v55 = [v53 isEqualToString:v52];

            if (v55)
            {
              v34 = MEMORY[0x1E69BA3A0];
              goto LABEL_74;
            }
          }

          else
          {
          }

          v56 = *MEMORY[0x1E69B9E48];
          v57 = v54;
          if (v57 == v56)
          {
            v34 = MEMORY[0x1E69BA390];
          }

          else
          {
            v58 = v57;
            if (v32 && v56)
            {
              v59 = [v57 isEqualToString:v56];

              if (v59)
              {
                v34 = MEMORY[0x1E69BA390];
                goto LABEL_74;
              }
            }

            else
            {
            }

            v60 = *MEMORY[0x1E69B9E40];
            v61 = v58;
            if (v61 != v60)
            {
              v62 = v61;
              if (!v32 || !v60)
              {

                goto LABEL_76;
              }

              v63 = [v61 isEqualToString:v60];

              if ((v63 & 1) == 0)
              {
LABEL_76:

                goto LABEL_77;
              }

              v34 = MEMORY[0x1E69BA388];
LABEL_74:
              v62 = *v34;

              if (!v62)
              {
LABEL_77:
                v20 = 0;
                v51 = 1;
                goto LABEL_78;
              }

              v64 = *MEMORY[0x1E69BA7C8];
              v65 = *MEMORY[0x1E69BB170];
              v67[0] = *MEMORY[0x1E69BA680];
              v67[1] = v65;
              v68[0] = v64;
              v68[1] = v62;
              v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
              [WeakRetained reportEventIfNecessary:v66];

              goto LABEL_76;
            }

            v34 = MEMORY[0x1E69BA388];
          }
        }
      }
    }

    goto LABEL_74;
  }

LABEL_80:
}

@end