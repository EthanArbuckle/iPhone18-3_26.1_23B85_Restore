@interface VUIJSOfferInterface
- (void)clearOffers:(id)offers;
- (void)fetchOffers:(BOOL)offers :(id)a4;
@end

@implementation VUIJSOfferInterface

- (void)fetchOffers:(BOOL)offers :(id)a4
{
  offersCopy = offers;
  v6 = a4;
  appContext = [(VUIJSObject *)self appContext];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [(VUIJSObject *)self setJSValue:v6 forProperty:uUIDString];
  objc_initWeak(&location, self);
  defaultOfferManager = [MEMORY[0x1E69E1568] defaultOfferManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__VUIJSOfferInterface_fetchOffers::__block_invoke;
  v13[3] = &unk_1E8731780;
  v11 = appContext;
  v14 = v11;
  objc_copyWeak(&v16, &location);
  v12 = uUIDString;
  v15 = v12;
  [defaultOfferManager fetchOffers:offersCopy completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __36__VUIJSOfferInterface_fetchOffers::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__VUIJSOfferInterface_fetchOffers::__block_invoke_2;
  v9[3] = &unk_1E8731758;
  objc_copyWeak(&v12, (a1 + 48));
  v10 = *(a1 + 40);
  v8 = v5;
  v11 = v8;
  [v7 evaluate:v9];

  objc_destroyWeak(&v12);
}

void __36__VUIJSOfferInterface_fetchOffers::__block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained jsValueForProperty:*(a1 + 32)];
  v4 = v3;
  if (*(a1 + 40))
  {
    v8[0] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [v4 callWithArguments:v5];
  }

  else
  {
    v7 = [v3 callWithArguments:0];
  }

  [WeakRetained setJSValue:0 forProperty:*(a1 + 32)];
}

- (void)clearOffers:(id)offers
{
  offersCopy = offers;
  appContext = [(VUIJSObject *)self appContext];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [(VUIJSObject *)self setJSValue:offersCopy forProperty:uUIDString];
  objc_initWeak(&location, self);
  defaultOfferManager = [MEMORY[0x1E69E1568] defaultOfferManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__VUIJSOfferInterface_clearOffers___block_invoke;
  v11[3] = &unk_1E87317A8;
  v9 = appContext;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v10 = uUIDString;
  v13 = v10;
  [defaultOfferManager clearOffers:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __35__VUIJSOfferInterface_clearOffers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__VUIJSOfferInterface_clearOffers___block_invoke_2;
  v5[3] = &unk_1E87309C0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v4 evaluate:v5];

  objc_destroyWeak(&v7);
}

void __35__VUIJSOfferInterface_clearOffers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained jsValueForProperty:*(a1 + 32)];
  v3 = [v2 callWithArguments:0];
  [WeakRetained setJSValue:0 forProperty:*(a1 + 32)];
}

@end