@interface ICQUIUpgradeFlowFactory
+ (Class)flowManagerClassForOfferType:(int64_t)a3;
@end

@implementation ICQUIUpgradeFlowFactory

+ (Class)flowManagerClassForOfferType:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v3 = _ICQGetLogSystem();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Unknown flow type.", &v10, 2u);
      }

LABEL_18:

      goto LABEL_22;
    }
  }

  else
  {
    if (a3 > 5)
    {
      if (a3 != 6 && a3 != 7 && a3 != 8)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (a3 != 4)
    {
      v3 = _ICQGetLogSystem();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = _ICQStringForOfferType();
        v10 = 138543362;
        v11 = v4;
        _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "unexpected offer type %{public}@ - should not need a flow manager", &v10, 0xCu);
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v5 = objc_opt_class();
  if (v5)
  {
    v6 = v5;
    v7 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = 138412290;
    v11 = v6;
    v8 = "Using flow manager of class: %@";
    goto LABEL_24;
  }

LABEL_22:
  v6 = objc_opt_class();
  v7 = _ICQGetLogSystem();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  v10 = 138412290;
  v11 = v6;
  v8 = "No flow manager was assigned. Using workaround with base class: %@";
LABEL_24:
  _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
LABEL_25:

  return v6;
}

@end