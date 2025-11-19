void sub_D34(id a1)
{
  off_86D0 = IMWeakLinkSymbol();
  if (!off_86D0)
  {
    v1 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Failed to weak link PCSRestoreCKBackup from ProtectedCloudStorage", v2, 2u);
    }
  }
}

id sub_18F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 restoreProtectedCloudStorageMobileBackup];
}