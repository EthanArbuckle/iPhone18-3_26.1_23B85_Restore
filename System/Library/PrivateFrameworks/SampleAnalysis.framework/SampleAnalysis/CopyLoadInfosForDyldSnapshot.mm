@interface CopyLoadInfosForDyldSnapshot
@end

@implementation CopyLoadInfosForDyldSnapshot

void ___CopyLoadInfosForDyldSnapshot_block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (!*(a1 + 96))
    {
      goto LABEL_4;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15 = *(a1 + 56);
    DyldImageEnumerateSegments();
    v4 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
    if ((v4 & 1) == 0)
    {
LABEL_4:
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 72) != 0)
      {
        v13 = *(a1 + 48);
        v14 = *(a1 + 80);
        dyld_image_content_for_segment();
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = [SABinaryLoadInfo addBinaryLoadInfoForDyldImage:a2 toLoadInfos:v5 isKernel:*(a1 + 96) == 0 dataGatheringOptions:*(a1 + 88)];
        if (!v6)
        {
          v7 = *__error();
          v8 = _sa_logt();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 96);
            v12 = DyldImagePath();
            *buf = 67109378;
            v21 = v11;
            v22 = 2080;
            v23 = v12;
            _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "[%d] Failed to create SABinary for %s", buf, 0x12u);
          }

          v9 = __error();
          v6 = 0;
          *v9 = v7;
          *(*(*(a1 + 40) + 8) + 24) = -1;
          goto LABEL_21;
        }

        if (*(v17 + 24) == 1 && *(a1 + 72))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((*(a1 + 100) & 1) == 0 && (*(v17 + 24) != 1 || !*(a1 + 72)))
        {
          goto LABEL_22;
        }

        v6 = [SABinary binaryForDyldImage:a2 options:*(a1 + 88)];
        if (*(v17 + 24) == 1 && *(a1 + 72))
        {
LABEL_17:
          v6 = v6;
          **(a1 + 72) = v6;
        }
      }

LABEL_21:

LABEL_22:
      _Block_object_dispose(&v16, 8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void *___CopyLoadInfosForDyldSnapshot_block_invoke_2(void *result, uint64_t a2, unint64_t a3)
{
  if (result[5] <= a3 && result[6] > a3)
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  return result;
}

void *___CopyLoadInfosForDyldSnapshot_block_invoke_3(void *result, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  if (a2 && a4 >= 0x1C && a2[3] == 2)
  {
    *(*(result[4] + 8) + 24) = 1;
    v4 = result[6];
    *(*(result[5] + 8) + 24) = 1;
    if (v4)
    {
      *v4 = a2[1] | ((a2[2] & 0xFFFFFF) << 32);
    }
  }

  return result;
}

@end