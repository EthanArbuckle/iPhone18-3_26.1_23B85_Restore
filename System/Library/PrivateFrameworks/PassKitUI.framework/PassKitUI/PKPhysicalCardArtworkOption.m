@interface PKPhysicalCardArtworkOption
@end

@implementation PKPhysicalCardArtworkOption

void __59__PKPhysicalCardArtworkOption_PKUIUtilities__artworkImage___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    v4 = [objc_alloc(MEMORY[0x1E69B8948]) initWithCGImage:objc_msgSend(v6 scale:"CGImage") orientation:{1, PKUIScreenScale()}];
    [v3 setFrontFaceImage:v4];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 1, v6);
  }
}

void __79__PKPhysicalCardArtworkOption_PKUIUtilities___downloadImageFromURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_4:
    if (v7)
    {
      v11 = [MEMORY[0x1E69DCAB8] imageWithData:v7 scale:PKUIScreenScale()];
      if (v11)
      {
LABEL_13:
        v15 = *(a1 + 40);
        if (v15)
        {
          (*(v15 + 16))(v15, v11);
        }

        goto LABEL_20;
      }

      v12 = PKLogFacilityTypeGetObject();
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v19 = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Failed to download card image from %@ due to %@", &v19, 0x16u);
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Could not parse card image from %@", &v19, 0xCu);
    }

    v11 = 0;
    goto LABEL_13;
  }

  v10 = v8;
  if ([v10 statusCode] == 200)
  {

    goto LABEL_4;
  }

  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v19 = 138412546;
    v20 = v17;
    v21 = 1024;
    LODWORD(v22) = [v10 statusCode];
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Could not download card image from %@ http status %d", &v19, 0x12u);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, 0);
  }

  v11 = 0;
LABEL_20:
}

@end