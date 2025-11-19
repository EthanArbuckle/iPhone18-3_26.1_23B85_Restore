id SAEffectiveElementIdentityDescription(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 elementDescription];
  }

  else
  {
    SAElementIdentityDescription(v1, 0);
  }
  v2 = ;

  return v2;
}

id SAElementIdentityDescription(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = MEMORY[0x277CCAB68];
    v6 = objc_opt_class();
    v7 = [v3 elementIdentifier];
    v8 = [v3 clientIdentifier];
    v9 = [v5 stringWithFormat:@"<%@: %p elementIdentifier: %@; clientIdentifier: %@", v6, v3, v7, v8];;

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v10 = [v3 uniqueElementIdentifier];
      [v9 appendFormat:@"; uniqueElementIdentifier: %@", v10];
    }

    if ([v4 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            v17 = [v11 objectForKeyedSubscript:v16];
            [v9 appendFormat:@"; %@: %@", v16, v17];
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }

    [v9 appendString:@">"];
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t SAHasIndicatorBehavior(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 hasIndicatorBehavior];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SAElementIdentityEqualToIdentity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [v3 clientIdentifier];
    v6 = [v4 clientIdentifier];
    if (BSEqualObjects())
    {
      v7 = [v3 elementIdentifier];
      v8 = [v4 elementIdentifier];
      v9 = BSEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

id SATargetElementFromBehaviorOverrider(void *a1)
{
  v1 = [a1 behaviorOverridingTarget];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 element];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SAHasAlertBehavior(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 hasAlertBehavior];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SAHasActivityBehavior(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 hasActivityBehavior];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SARegisterSystemApertureLogging()
{
  if (SARegisterSystemApertureLogging_onceToken != -1)
  {
    SARegisterSystemApertureLogging_cold_1();
  }
}

uint64_t __SARegisterSystemApertureLogging_block_invoke()
{
  v0 = os_log_create(SALogSubsystem, "Element");
  v1 = SALogElement;
  SALogElement = v0;

  SALogSystem = os_log_create(SALogSubsystem, "System");

  return MEMORY[0x2821F96F8]();
}

void sub_26C47EDD0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_26C47F2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

uint64_t SAElementIdentitiesEqualToIdentities(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [v3 objectAtIndexedSubscript:v6];
        v9 = [v4 objectAtIndexedSubscript:v6];
        v10 = SAElementIdentityEqualToIdentity(v8, v9);

        if (!v10)
        {
          break;
        }
      }

      while (v7 != v6++);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t SAElementEqualToElement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v7 = 1;
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [v3 uniqueElementIdentifier];
    v6 = [v4 uniqueElementIdentifier];
    v7 = BSEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}