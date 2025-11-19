@interface PKSharingMessageExtensionMessageBuilder
+ (void)messageFromConfiguration:(id)a3 completionHandler:(id)a4;
+ (void)messageFromFlightShareInvitation:(id)a3 completionHandler:(id)a4;
+ (void)messageFromInvitation:(id)a3 analyticsSessionToken:(id)a4 completionHandler:(id)a5;
+ (void)messageFromSharingRequest:(id)a3 completionHandler:(id)a4;
+ (void)messageURLFromSharingRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation PKSharingMessageExtensionMessageBuilder

+ (void)messageFromConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKShareableCredentialMessage);
  v8 = [v6 credentialsMetadata];

  v9 = [v8 count];
  if (v9 < 2)
  {
    v11 = [v8 objectAtIndexedSubscript:0];
    v12 = [v11 preview];
    v13 = [v12 ownerDisplayName];
    v10 = PKLocalizedShareableCredentialString(&cfstr_ShareOneSharea.isa, &stru_1F3BD5BF0.isa, v13);
  }

  else
  {
    v10 = PKLocalizedShareableCredentialString(&cfstr_ShareMultipleS.isa, &cfstr_Lu.isa, v9);
  }

  [(PKShareableCredentialMessage *)v7 setCaption:v10];

  if (PKHidePlaceholderImageIniMessage())
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Not including imagine in iMessage because of rdar://61852456 (Always failed to send shared Pass through iMessage via Ven1)", buf, 2u);
    }
  }

  else
  {
    v15 = MEMORY[0x1E69DCAB8];
    v16 = [v8 firstObject];
    v17 = [v16 preview];
    v18 = [v15 imageWithCGImage:{objc_msgSend(v17, "passThumbnailImage")}];
    [(PKShareableCredentialMessage *)v7 setPassThumbnailImage:v18];
  }

  v19 = [v8 pk_arrayByApplyingBlock:&__block_literal_global_64];
  [(PKShareableCredentialMessage *)v7 setShareableCredentials:v19];
  v20 = objc_alloc_init(MEMORY[0x1E6973F30]);
  v21 = [objc_alloc(MEMORY[0x1E6973F28]) initWithAlternateLayout:v20];
  v22 = objc_alloc(MEMORY[0x1E6973F20]);
  v23 = objc_alloc_init(MEMORY[0x1E6973F38]);
  v24 = [v22 initWithSession:v23];

  v25 = [(PKShareableCredentialMessage *)v7 urlRepresentation];
  [v24 setURL:v25];

  [v24 setRequiresValidation:1];
  [v24 setLayout:v21];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKSharingMessageExtensionMessageBuilder_messageFromConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010E20;
  v29 = v24;
  v30 = v5;
  v26 = v24;
  v27 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __86__PKSharingMessageExtensionMessageBuilder_messageFromConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B9258];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 cardConfigurationIdentifier];
  [v4 setCardConfigurationIdentifier:v5];

  v6 = [v3 credentialIdentifier];
  [v4 setCredentialIdentifier:v6];

  v7 = [v3 credentialIdentifier];
  v8 = [v7 dataUsingEncoding:4];
  v9 = [v8 SHA256Hash];
  v10 = [v9 base64EncodedStringWithOptions:0];
  [v4 setCredentialIdentifierHash:v10];

  v11 = [v3 preview];
  v12 = [v11 ownerDisplayName];
  [v4 setOwnerDisplayName:v12];

  v13 = [v3 provisioningTarget];
  v14 = [v13 nonce];
  [v4 setNonce:v14];

  v15 = [v3 sharingInstanceIdentifier];

  [v4 setSharingInstanceIdentifier:v15];
  [v4 setStatus:1];

  return v4;
}

+ (void)messageFromInvitation:(id)a3 analyticsSessionToken:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 share];
  v11 = [v7 pass];
  v12 = [v7 displayInformation];
  if (!v12)
  {
    v12 = [MEMORY[0x1E69B9280] displayInformationForAccessPass:v11 webService:0];
  }

  v13 = objc_alloc_init(PKSharingMessageExtensionRelayServerMessage);
  v14 = [v12 title];
  [(PKSharingMessageExtensionCommonMessage *)v13 setTitle:v14];

  v15 = [v12 subtitle];
  [(PKSharingMessageExtensionCommonMessage *)v13 setSubtitle:v15];

  v16 = [v10 status];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 3;
  }

  [(PKSharingMessageExtensionRelayServerMessage *)v13 setStatus:v17];
  v18 = objc_alloc_init(PKSharingMessageExtensionRelayServerLocalProperties);
  [(PKSharingMessageExtensionRelayServerLocalProperties *)v18 setPartialInvite:v7];
  [(PKSharingMessageExtensionRelayServerLocalProperties *)v18 setAnalyticsSessionToken:v9];

  [(PKSharingMessageExtensionRelayServerMessage *)v13 setLocalProperties:v18];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKSharingMessageExtensionMessageBuilder_messageFromInvitation_analyticsSessionToken_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8010DD0;
  v19 = v13;
  v33 = v19;
  v20 = v8;
  v34 = v20;
  v21 = _Block_copy(aBlock);
  if (PKHidePlaceholderImageIniMessage())
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Not including image in iMessage because of rdar://61852456 (Always failed to send shared Pass through iMessage via Ven1)", buf, 2u);
    }

    v21[2](v21);
  }

  else
  {
    v23 = [v12 imageURL];
    if (v23)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __105__PKSharingMessageExtensionMessageBuilder_messageFromInvitation_analyticsSessionToken_completionHandler___block_invoke_3;
      v29[3] = &unk_1E8012AF0;
      v30 = v19;
      v31 = v21;
      PKCommonCachedImageFromURL(v23, v29);
    }

    else
    {
      v24 = MEMORY[0x1E69DCAB8];
      PKPassKitUIBundle();
      v25 = v27 = v11;
      v26 = [v24 imageNamed:@"Generic-Shared-Key" inBundle:v25];
      [(PKSharingMessageExtensionCommonMessage *)v19 setThumbnail:v26];

      v11 = v27;
      v21[2](v21);
    }
  }
}

void __105__PKSharingMessageExtensionMessageBuilder_messageFromInvitation_analyticsSessionToken_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6973F30]);
  v3 = [*(a1 + 32) title];
  [v2 setCaption:v3];

  v4 = [*(a1 + 32) subtitle];
  [v2 setSubcaption:v4];

  v5 = [objc_alloc(MEMORY[0x1E6973F28]) initWithAlternateLayout:v2];
  v6 = objc_alloc(MEMORY[0x1E6973F20]);
  v7 = objc_alloc_init(MEMORY[0x1E6973F38]);
  v8 = [v6 initWithSession:v7];

  v9 = [*(a1 + 32) urlRepresentation];
  [v8 setURL:v9];

  [v8 setRequiresValidation:1];
  [v8 setLayout:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__PKSharingMessageExtensionMessageBuilder_messageFromInvitation_analyticsSessionToken_completionHandler___block_invoke_2;
  v12[3] = &unk_1E8010E20;
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __105__PKSharingMessageExtensionMessageBuilder_messageFromInvitation_analyticsSessionToken_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = MEMORY[0x1E69B8948];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = UIImagePNGRepresentation(v5);

    v8 = [v6 initWithData:v7 scale:3.0];
    v9 = [MEMORY[0x1E69B8950] constraintsWithAspectFillToSize:{242.0, 152.0}];
    [v9 setOutputScale:3.0];
    v10 = [v8 resizedImageWithConstraints:v9];
    v11 = *(a1 + 32);
    v12 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v13 = [v10 imageData];
    v14 = [v12 initWithData:v13 scale:3.0];
    [v11 setThumbnail:v14];
  }

  v15 = *(*(a1 + 40) + 16);

  return v15();
}

+ (void)messageFromSharingRequest:(id)a3 completionHandler:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v36 = a4;
  v5 = a3;
  v6 = objc_alloc_init(PKSubcredentialInvitationMessage);
  v38 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  v37 = [v38 hexEncoding];
  [(PKSubcredentialInvitationMessage *)v6 setDataString:?];
  v7 = [MEMORY[0x1E69B8A58] sharedInstance];
  v8 = [v5 passIdentifier];

  v9 = [v7 passWithUniqueID:v8];
  v10 = [v9 paymentPass];

  v11 = [v10 organizationName];
  v12 = [v10 localizedDescription];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 length];
    v15 = [v11 length];
    v16 = v15 + 1;
    if (v14 > v15 + 1)
    {
      v17 = v15;
      if ([v13 hasPrefix:v11])
      {
        v18 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v19 = [v18 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", v17)}];

        if (v19)
        {
          v20 = [v13 substringFromIndex:v16];

          v13 = v20;
        }
      }
    }
  }

  v21 = objc_alloc_init(MEMORY[0x1E69B85A8]);
  [v21 setIssuer:v11];
  [v21 setDeviceModel:v13];
  [v21 setForWatch:0];
  [(PKSubcredentialInvitationMessage *)v6 setPhoneInvitation:v21];
  v22 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v21;
    _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Compose message with invitation for phone: %@", buf, 0xCu);
  }

  v23 = objc_alloc_init(MEMORY[0x1E69B85A8]);
  [v23 setIssuer:v11];
  [v23 setDeviceModel:v13];
  [v21 setForWatch:1];
  [(PKSubcredentialInvitationMessage *)v6 setWatchInvitation:v23];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v23;
    _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Compose message with invitation for watch: %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x1E696AFB0] UUID];
  v25 = [v24 UUIDString];
  [(PKSubcredentialInvitationMessage *)v6 setUniqueIdentifier:v25];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKSharingMessageExtensionMessageBuilder_messageFromSharingRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8011D78;
  v26 = v6;
  v44 = v26;
  v27 = v11;
  v45 = v27;
  v28 = v13;
  v46 = v28;
  v29 = v36;
  v47 = v29;
  v30 = _Block_copy(aBlock);
  if (PKHidePlaceholderImageIniMessage())
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Not including image in iMessage because of rdar://61852456 (Always failed to send shared Pass through iMessage via Ven1)", buf, 2u);
    }

    v30[2](v30);
  }

  else
  {
    +[PKHeroCardExplanationHeaderView recommendedCardImageSize];
    v32 = v31;
    v34 = v33;
    v35 = +[PKPassSnapshotter sharedInstance];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __87__PKSharingMessageExtensionMessageBuilder_messageFromSharingRequest_completionHandler___block_invoke_3;
    v39[3] = &unk_1E8015C78;
    v40 = v10;
    v41 = v26;
    v42 = v30;
    [v35 snapshotWithPass:v40 size:v39 completion:{v32, v34}];
  }
}

void __87__PKSharingMessageExtensionMessageBuilder_messageFromSharingRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6973F30]);
  v3 = PKPassKitCoreBundle();
  v4 = [v3 URLForResource:@"SubcredentialMessageFallbackMedia" withExtension:@"png"];
  [v2 setMediaFileURL:v4];

  v5 = PKLocalizedCredentialString(&cfstr_CarkeyNotSuppo.isa);
  [v2 setCaption:v5];

  v6 = PKLocalizedString(&cfstr_Wallet_1.isa);
  [v2 setSubcaption:v6];

  v7 = [objc_alloc(MEMORY[0x1E6973F28]) initWithAlternateLayout:v2];
  v8 = objc_alloc(MEMORY[0x1E6973F20]);
  v9 = objc_alloc_init(MEMORY[0x1E6973F38]);
  v10 = [v8 initWithSession:v9];

  v11 = [*(a1 + 32) urlRepresentation];
  [v10 setURL:v11];

  [v10 setRequiresValidation:1];
  [v10 setLayout:v7];
  v12 = PKLocalizedCredentialString(&cfstr_CarkeyAccessib.isa, &stru_1F3BD6370.isa, *(a1 + 40), *(a1 + 48));
  [v10 setAccessibilityLabel:v12];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKSharingMessageExtensionMessageBuilder_messageFromSharingRequest_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010E20;
  v13 = *(a1 + 56);
  v16 = v10;
  v17 = v13;
  v14 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__PKSharingMessageExtensionMessageBuilder_messageFromSharingRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Finished snapshotting pass %@ with resulting snapshot %@", &v6, 0x16u);
  }

  [*(a1 + 40) setPassThumbnailImage:v3];
  (*(*(a1 + 48) + 16))();
}

+ (void)messageURLFromSharingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKSharingMessageExtensionMessageBuilder_messageURLFromSharingRequest_completionHandler___block_invoke;
  v8[3] = &unk_1E8015CA0;
  v9 = v6;
  v7 = v6;
  [a1 messageFromSharingRequest:a3 completionHandler:v8];
}

void __90__PKSharingMessageExtensionMessageBuilder_messageURLFromSharingRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  (*(v2 + 16))(v2, v3);
}

+ (void)messageFromFlightShareInvitation:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v39 = [v6 flight];
  v7 = objc_alloc_init(MEMORY[0x1E6973F30]);
  v8 = PKPassKitCoreBundle();
  v9 = [v8 URLForResource:@"FlightShareMessageFallbackMedia" withExtension:@"png"];
  [v7 setMediaFileURL:v9];

  v10 = [v39 airlineName];
  v11 = PKLocalizedFlightString(v10);
  [v7 setCaption:v11];

  v12 = [v39 airlineCode];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v39, "flightNumber")}];
  v14 = [v13 stringValue];
  v15 = PKLocalizedFlightString(&cfstr_FlightShareBub_0.isa, &stru_1F3BD6370.isa, v12, v14);
  [v7 setSubcaption:v15];

  v16 = [objc_alloc(MEMORY[0x1E6973F28]) initWithAlternateLayout:v7];
  v17 = objc_alloc_init(PKFlightShareMessage);
  [(PKFlightShareMessage *)v17 setFlight:v39];
  v18 = [v7 caption];
  [(PKSharingMessageExtensionCommonMessage *)v17 setTitle:v18];

  v19 = [v7 subcaption];
  [(PKSharingMessageExtensionCommonMessage *)v17 setSubtitle:v19];

  v20 = [MEMORY[0x1E69B8A58] sharedInstance];
  v21 = [v6 passUniqueIdentifier];

  v22 = [v20 passWithUniqueID:v21];

  v23 = [v22 displayProfile];
  v24 = [v22 logoImage];
  v25 = v24;
  if (v24)
  {
    [v24 scale];
    v27 = v26;
    [v25 size];
    PKSizeAspectFit();
    v28 = [MEMORY[0x1E69B8950] constraintsWithAspectFillToSize:?];
    [v28 setOutputScale:v27];
    v29 = [v25 resizedImageWithConstraints:v28];
    v30 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v29];
    [(PKFlightShareMessage *)v17 setLogoImage:v30];
  }

  v31 = [v23 foregroundColor];
  [(PKFlightShareMessage *)v17 setForegroundColor:v31];

  v32 = [v23 backgroundColor];
  [(PKFlightShareMessage *)v17 setBackgroundColor:v32];

  v33 = objc_alloc(MEMORY[0x1E6973F20]);
  v34 = objc_alloc_init(MEMORY[0x1E6973F38]);
  v35 = [v33 initWithSession:v34];

  v36 = [(PKFlightShareMessage *)v17 urlRepresentation];
  [v35 setURL:v36];

  [v35 setRequiresValidation:1];
  [v35 setLayout:v16];
  v37 = [v39 airlineName];
  v38 = PKLocalizedFlightString(&cfstr_FlightShareAcc.isa, &cfstr_Lu_2.isa, v37, [v39 flightNumber]);
  [v35 setAccessibilityLabel:v38];

  v5[2](v5, v35);
}

@end