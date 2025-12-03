@interface LWCRExecutor
+ (id)executor;
- (BOOL)evaluateRequirements:(id)requirements withFacts:(id)facts;
@end

@implementation LWCRExecutor

- (BOOL)evaluateRequirements:(id)requirements withFacts:(id)facts
{
  requirementsCopy = requirements;
  factsCopy = facts;
  [factsCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __47__LWCRExecutor_evaluateRequirements_withFacts___block_invoke_2;
  v23[3] = &unk_29EE8DB40;
  v24 = factsCopy;
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __47__LWCRExecutor_evaluateRequirements_withFacts___block_invoke_3;
  v21[3] = &unk_29EE8DB68;
  v22 = v24;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __47__LWCRExecutor_evaluateRequirements_withFacts___block_invoke_4;
  v19[3] = &unk_29EE8DB90;
  v7 = v22;
  v20 = v7;
  v25 = &unk_2A1EAEAE0;
  v8 = v19;
  v9 = v21;
  v26 = MEMORY[0x29C283C30](v23);
  v10 = MEMORY[0x29C283C30](v9);

  v27 = v10;
  v11 = MEMORY[0x29C283C30](v8);

  v28 = v11;
  v18[0] = &v25;
  v18[1] = 0;
  v16 = 0u;
  v17 = 0u;
  v12 = *(requirementsCopy + 72);
  v29 = *(requirementsCopy + 56);
  v30 = v12;
  v31 = *(requirementsCopy + 88);
  v32 = *(requirementsCopy + 13);
  if (der_vm_context_is_valid())
  {
    v13 = (requirementsCopy + 56);
  }

  else
  {
    v13 = 0;
  }

  TLE::Executor::getOperationsFromCE(v18, v13, &v16);
  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    (*(**(&v17 + 1) + 16))(&v29);
    v14 = (v29 == 0) & BYTE8(v30);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v17 + 1);

  return v14;
}

void __47__LWCRExecutor_evaluateRequirements_withFacts___block_invoke_2(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:a2 length:a3 encoding:4];
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    *a4 = *(v7 + 8);
    *(a4 + 16) = *(v7 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

void __47__LWCRExecutor_evaluateRequirements_withFacts___block_invoke_3(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:a2 length:a3 encoding:4];
  v8 = [v5 valueForKey:v6];

  if (v8)
  {
    v7 = *(v8 + 24);
    *a4 = *(v8 + 8);
    *(a4 + 16) = v7;
    *(a4 + 32) = *(v8 + 5);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

BOOL __47__LWCRExecutor_evaluateRequirements_withFacts___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:a2 length:a3 encoding:4];
  v5 = [v3 valueForKey:v4];
  v6 = v5 != 0;

  return v6;
}

+ (id)executor
{
  v2 = objc_alloc_init(LWCRExecutor);

  return v2;
}

@end