void sub_260F1E1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_260F1E1E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_260F1E1F0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2666F5440](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_260F1E240(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = APLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v13 = 138477827;
      v14 = v8;
      v9 = "Fetched gender and age group data: %{private}@";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_260F1D000, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    LOWORD(v13) = 0;
    v9 = "There was no gender and age group data to fetch";
    v10 = v6;
    v11 = 2;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_260F1E3C4()
{
  qword_280C4F9C8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];

  return MEMORY[0x2821F96F8]();
}

void sub_260F1E790(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CE4A38] sharedInstance];
  v8 = [v5 initWithConfig:v4 notifier:v6];

  v7 = [MEMORY[0x277CE4A38] sharedInstance];
  [v7 setConfiguration:v8];

  (*(*(a1 + 32) + 16))();
}

id sub_260F1E864(float a1)
{
  objc_opt_self();
  if (a1 >= 0.0)
  {
    v3 = MEMORY[0x277CCABB0];
    LODWORD(v2) = 1.0;
    if (a1 <= 1.0)
    {
      *&v2 = a1;
    }
  }

  else
  {
    v3 = MEMORY[0x277CCABB0];
    v2 = 0.0;
  }

  v4 = [v3 numberWithFloat:v2];

  return v4;
}

void sub_260F1EE20(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_260F1D000, v3, OS_LOG_TYPE_ERROR, "Received error from fetchGenderAndAgeGroupData. %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_260F1EFAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_260F1EFC8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = APLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v11 = 138477827;
      v12 = v3;
      v7 = "Fetched gender and age group data: %{private}@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_260F1D000, v8, OS_LOG_TYPE_INFO, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v11) = 0;
    v7 = "There was no gender and age group data to fetch";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
  [WeakRetained finished];

  v10 = *MEMORY[0x277D85DE8];
}

void sub_260F1F200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260F1F21C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = APLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v11 = 138477827;
      v12 = v3;
      v7 = "Fetched ad policy: %{private}@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_260F1D000, v8, OS_LOG_TYPE_INFO, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v11) = 0;
    v7 = "There were no policies returned.";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
  [WeakRetained finished];

  v10 = *MEMORY[0x277D85DE8];
}

void sub_260F1F410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_260F1F42C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = APLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v11 = 138477827;
      v12 = v3;
      v7 = "Fetched ad policy: %{private}@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_260F1D000, v8, OS_LOG_TYPE_INFO, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v11) = 0;
    v7 = "There were no policies returned.";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
  [WeakRetained finished];

  v10 = *MEMORY[0x277D85DE8];
}

void sub_260F1F650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260F1F66C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = APLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v12 = 138477827;
      v13 = v7;
      v8 = "Fetched configuration: %{private}@";
      v9 = v5;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_260F1D000, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
    }
  }

  else if (v6)
  {
    LOWORD(v12) = 0;
    v8 = "No configuration found";
    v9 = v5;
    v10 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  [WeakRetained finished];

  v11 = *MEMORY[0x277D85DE8];
}

void sub_260F1F8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260F1F8D4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finished];
}

uint64_t sub_260F1F9E0()
{
  qword_280C4F9B0 = objc_alloc_init(PCRingBuffer);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260F1FF6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260F1FF84(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(*(*(a1 + 32) + 8) + 40) lock];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  [*(*(*(a1 + 32) + 8) + 40) unlock];
}

void sub_260F2001C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_INFO, "PCStatusConditions XPC connection invalidated. Lost connection.", v7, 2u);
  }

  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"A serious error occurred. The XPC connection was invalidated.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PCStatusConditionsErrorDomain" code:-1101 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_260F2013C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_ERROR, "PCStatusConditions XPC connection interrupted. Lost connection.", v7, 2u);
  }

  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"A serious error occurred. The XPC connection was interrupted.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PCStatusConditionsErrorDomain" code:-1101 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_260F2025C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_260F1D000, v4, OS_LOG_TYPE_ERROR, "Failed to set the status condition due to error: %{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_260F2065C(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(*(*(a1 + 32) + 8) + 40) lock];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  [*(*(*(a1 + 32) + 8) + 40) unlock];
}

void sub_260F206F4(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_INFO, "PCStatusConditions XPC connection invalidated. Lost connection.", v7, 2u);
  }

  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"A serious error occurred. The XPC connection was invalidated.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PCStatusConditionsErrorDomain" code:-1101 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_260F20814(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_ERROR, "PCStatusConditions XPC connection interrupted. Lost connection.", v7, 2u);
  }

  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"A serious error occurred. The XPC connection was interrupted.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PCStatusConditionsErrorDomain" code:-1101 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_260F20934(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_260F1D000, v4, OS_LOG_TYPE_ERROR, "Failed to clear the status condition due to error: %{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_260F20D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [*(*(*(a1 + 32) + 8) + 40) lock];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v8);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  [*(*(*(a1 + 32) + 8) + 40) unlock];
}

void sub_260F20DBC(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_INFO, "PCStatusConditions XPC connection invalidated. Lost connection.", v7, 2u);
  }

  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"The XPC connection was invalidated.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PCStatusConditionsErrorDomain" code:-1101 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_260F20EE0(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_ERROR, "PCStatusConditions XPC connection interrupted due to an error.", v7, 2u);
  }

  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"A serious error occurred. The XPC connection was interrupted.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PCStatusConditionsErrorDomain" code:-1101 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_260F21004(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"has not";
    if (a2)
    {
      v7 = @"has";
    }

    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_260F1D000, v6, OS_LOG_TYPE_INFO, "The status condition %{public}@ been registered.", &v10, 0xCu);
  }

  if (v5)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_260F1D000, v8, OS_LOG_TYPE_ERROR, "Failed to read the status condition due to error: %{public}@", &v10, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_260F21598(uint64_t a1, void *a2)
{
  v3 = [a2 statusCondition];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

BOOL sub_260F21700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 setTime];

  v9 = 0;
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 setTime];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 < 86400)
    {
      v9 = 1;
    }
  }

  return v9;
}